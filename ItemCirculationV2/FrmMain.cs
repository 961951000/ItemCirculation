using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using ItemCirculation.Core.Api;
using ItemCirculation.Core.Shared;
using ItemCirculation.Data.Models;
using ItemCirculationV2.Helper;
using ItemCirculationV2.Service;

namespace ItemCirculationV2
{
    public partial class FrmMain : Form
    {
        private readonly string _timeout;

        private readonly YingXinRr9 _rr9;

        private readonly StudentService _studentService;

        private readonly ItemService _itemService;

        private readonly CirculationRecordService _circulationRecordService;

        private Student _student;

        public FrmMain()
        {
            _timeout = ConfigurationManager.AppSettings["Timeout"];
            _rr9 = int.TryParse(ConfigurationManager.AppSettings["ComPort"], out int comPort) ? new YingXinRr9(comPort) : new YingXinRr9();
            _studentService = new StudentService();
            _itemService = new ItemService();
            _circulationRecordService = new CirculationRecordService();

            InitializeComponent();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            FormStyle.InitDataGridView(dgvAction);
            btnEnd.Enabled = false;
            btnSubmit.Enabled = false;
            lblTime.Text = string.Empty;
        }

        private void FrmMain_Shown(object sender, EventArgs e)
        {
            btnStart.Focus();
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            btnStart.Enabled = false;
            try
            {
                BeginInvoke(new MethodInvoker(() =>
                {
                    dgvAction.Rows.Clear();
                }));
                if (_rr9.OpenComPort())
                {
                    _rr9.Change14443();
                    _rr9.StartHidListen(YingXinRr9_HidListen);
                    btnEnd.Enabled = true;
                    btnEnd.Focus();
                    TimingBegin();
                }
                else
                {
                    ResetAction();
                    MessageBox.Show(@"设备异常！");
                    BeginInvoke(new MethodInvoker(() =>
                    {
                        btnStart.Focus();
                    }));
                }
            }
            catch (Exception ex)
            {
                ResetAction();
                BeginInvoke(new MethodInvoker(() =>
                {
                    btnStart.Focus();
                }));
                Logger.Error(ex);
                throw ex;
            }
        }

        private void YingXinRr9_HidListen(string hid)
        {
            _rr9.StopHidListen();
            TimingEnd();
            try
            {
                _student = _studentService.IdentityVerification(hid);
                if (_student.Id != null)
                {
                    BeginInvoke(new MethodInvoker(() =>
                    {
                        this.lblName.Text = _student.StudentName;
                        this.lblGrade.Text = _student.GradeName;
                        this.lblClass.Text = _student.ClassName;
                    }));
                    _rr9.Change15693();
                    _rr9.StartUidListen(YingXinRr9_UidListen);
                    TimingBegin();
                }
                else
                {
                    ResetAction();
                    MessageBox.Show(@"用户验证失败！");
                    BeginInvoke(new MethodInvoker(() =>
                    {
                        btnStart.Focus();
                    }));
                }
            }
            catch (Exception ex)
            {
                ResetAction();
                BeginInvoke(new MethodInvoker(() =>
                {
                    btnStart.Focus();
                }));
                Logger.Error(ex);
                throw ex;
            }
        }

        private void YingXinRr9_UidListen(IEnumerable<string> uidList)
        {
            var list = _itemService.QueryList(uidList).OrderBy(x => x.Uid).ToList();
            BeginInvoke(new MethodInvoker(() =>
            {
                if (dgvAction.Rows.Count == list.Count)
                {
                    for (int i = 0; i < list.Count; i++)
                    {
                        var item = list[i];
                        dgvAction.Rows[i].Cells[0].Value = item.ItemName;
                        dgvAction.Rows[i].Cells[1].Value = item.ItemType;
                        dgvAction.Rows[i].Cells[2].Value = item.Uid;
                        dgvAction.Rows[i].Tag = item.Id;
                    }
                }
                else
                {
                    dgvAction.Rows.Clear();
                    foreach (var item in list)
                    {
                        var index = dgvAction.Rows.Add(item.ItemName, item.ItemType, item.Uid);
                        dgvAction.Rows[index].Tag = item.Id;
                    }
                }
            }));
        }

        private void btnEnd_Click(object sender, EventArgs e)
        {
            btnEnd.Enabled = false;
            _rr9.StopUidListen();
            btnSubmit.Enabled = true;
            btnSubmit.Focus();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            btnSubmit.Enabled = false;
            try
            {
                var uidList = from DataGridViewRow row in dgvAction.Rows
                              select Convert.ToString(row.Cells[2].Value);

                var girdview = rdoIn.Checked ? _circulationRecordService.LoanItem(uidList, _student) : _circulationRecordService.ReturnItem(uidList, _student);

                if (dgvAction.Rows.Count == girdview.Count)
                {
                    for (int i = 0; i < girdview.Count; i++)
                    {
                        var item = girdview[i];
                        dgvAction.Rows[i].Cells[0].Value = item.ItemName;
                        dgvAction.Rows[i].Cells[1].Value = item.ItemType;
                        dgvAction.Rows[i].Cells[2].Value = item.Uid;
                        dgvAction.Rows[i].Cells[3].Value = item.ExecuteResult ? "操作成功" : "操作失败";
                        dgvAction.Rows[i].Tag = item.ItemId;
                    }
                }
                else
                {
                    dgvAction.Rows.Clear();
                    foreach (var item in girdview)
                    {
                        var index = dgvAction.Rows.Add(item.ItemName, item.ItemType, item.Uid, item.ExecuteResult ? "操作成功" : "操作失败");
                        dgvAction.Rows[index].Tag = item.ItemId;
                    }
                }
                TimingEnd();
                btnStart.Enabled = true;
                btnStart.Focus();
            }
            catch (Exception ex)
            {
                ResetAction();
                BeginInvoke(new MethodInvoker(() =>
                {
                    btnStart.Focus();
                }));
                Logger.Error(ex);
                throw ex;
            }
        }

        /// <summary>
        /// 计时开始
        /// </summary>
        private void TimingBegin()
        {
            BeginInvoke(new MethodInvoker(() =>
            {
                lblTime.Text = _timeout;
                tmrTimeOut.Start();
            }));
        }

        /// <summary>
        /// 计时结束
        /// </summary>
        private void TimingEnd()
        {
            BeginInvoke(new MethodInvoker(() =>
            {
                lblTime.Text = string.Empty;
                tmrTimeOut.Stop();
            }));
        }

        private void tmrTimeOut_Tick(object sender, EventArgs e)
        {
            var timeout = Convert.ToInt32(lblTime.Text);
            if (timeout > 0)
            {
                timeout--;
                lblTime.Text = timeout.ToString();
            }
            else
            {
                ResetAction();
                MessageBox.Show("请求超时！");
                BeginInvoke(new MethodInvoker(() =>
                {
                    btnStart.Focus();
                }));
            }
        }
        private void dgvAction_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            FormStyle.DataGridViewShowLineNumber(sender, e, Font);
        }

        private void dgvAction_CellPainting(object sender, DataGridViewCellPaintingEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow dgr = dgvAction.Rows[e.RowIndex];
                if (e.ColumnIndex == 3)
                {
                    if (Convert.ToString(dgr.Cells[e.ColumnIndex].Value) == "操作成功")
                    {

                        e.CellStyle.ForeColor = Color.Green;
                    }
                    else
                    {
                        e.CellStyle.ForeColor = Color.Red;
                    }
                }
            }
        }

        private void ResetAction()
        {
            _rr9.CloseHidListen();
            _rr9.CloseUidListen();
            _rr9.CloseComPort();
            BeginInvoke(new MethodInvoker(() =>
            {
                btnStart.Enabled = true;
            }));
            BeginInvoke(new MethodInvoker(() =>
            {
                btnEnd.Enabled = false;
            }));
            BeginInvoke(new MethodInvoker(() =>
            {
                btnSubmit.Enabled = false;
            }));
            TimingEnd();
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            _rr9?.StopHidListen();
            _rr9?.StopUidListen();
            _rr9?.CloseComPort();
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            switch (keyData)
            {
                case Keys.Left:
                    {
                        rdoIn.Checked = true;
                        return true;
                    }

                case Keys.Right:
                    {
                        rdoOut.Checked = true;
                        return true;
                    }
            }

            return false;
        }
    }
}
