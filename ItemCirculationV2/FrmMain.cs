using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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

        private readonly AutoSizeFormClass _autoSizeForm;

        public FrmMain()
        {
            _timeout = ConfigurationManager.AppSettings["Timeout"];
            _rr9 = int.TryParse(ConfigurationManager.AppSettings["ComPort"], out int comPort) ? new YingXinRr9(comPort) : new YingXinRr9();
            _studentService = new StudentService();
            _itemService = new ItemService();
            _circulationRecordService = new CirculationRecordService();
            _autoSizeForm = new AutoSizeFormClass();

            InitializeComponent();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            //_autoSizeForm.controllInitializeSize(this);
            FormStyle.InitDataGridView(dgvAction);
            btnEnd.Enabled = false;
            btnSubmit.Enabled = false;
            lblTime.Text = string.Empty;
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            btnStart.Enabled = false;
            try
            {
                if (_rr9.OpenComPort())
                {
                    _rr9.Change14443();
                    _rr9.StartHidListen(YingXinRr9_HidListen);
                    btnEnd.Enabled = true;
                    TimingBegin();
                }
                else
                {
                    MessageBox.Show(@"设备异常！");
                    _rr9.CloseComPort();
                    btnStart.Enabled = true;
                }
            }
            catch (Exception ex)
            {
                ResetAction();
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
                    _rr9.Change15693();
                    _rr9.StartUidListen(YingXinRr9_UidListen);
                    TimingBegin();
                }
                else
                {
                    MessageBox.Show(@"用户验证失败！");
                }
            }
            catch (Exception ex)
            {
                ResetAction();
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
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            btnSubmit.Enabled = false;
            try
            {
                var uidList = from DataGridViewRow row in dgvAction.Rows
                              select Convert.ToString(row.Cells[2].Value);

                var girdview = rdoIn.Checked ? _circulationRecordService.LoanItem(uidList, _student) : _circulationRecordService.ReturnItem(uidList, _student);

                foreach (var item in girdview)
                {
                    var index = dgvAction.Rows.Add(item.ItemName, item.ItemType, item.Uid, item.ExecuteResult ? "操作成功" : "操作失败");
                    dgvAction.Rows[index].Tag = item.ItemId;
                }
                TimingEnd();
                btnStart.Enabled = true;
            }
            catch (Exception ex)
            {
                ResetAction();
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
                MessageBox.Show("请求超时！");
                ResetAction();
            }
        }

        private void ResetAction()
        {
            _rr9.StopHidListen();
            _rr9.StopUidListen();
            btnStart.Enabled = true;
            btnEnd.Enabled = false;
            btnSubmit.Enabled = false;
            TimingEnd();
        }

        private void FrmMain_Layout(object sender, LayoutEventArgs e)
        {
            _autoSizeForm.controlAutoSize(this);
        }
    }
}
