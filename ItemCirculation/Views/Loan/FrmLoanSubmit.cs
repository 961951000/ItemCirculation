﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Windows.Forms;
using ItemCirculation.Api;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Event;
using ItemCirculation.Models;
using ItemCirculation.Service;
using ItemCirculation.Util;
using System.Threading;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanSubmit : Form
    {
        private FrmLoanEnd _son;
        private readonly ItemService _itemService = new ItemService();
        private readonly CirculationService _circulationService = new CirculationService();
        private readonly Student _student;
        private readonly YingXinRr9 _rr9;
        public SubmitPostBackEventHandler SubmitPostBack { get; set; }
        public FrmLoanSubmit()
        {
            InitializeComponent();
        }
        public FrmLoanSubmit(Student student, YingXinRr9 rr9)
        {
            _student = student;
            _rr9 = rr9;
            InitializeComponent();
        }
        private void FrmLoanSubmit_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
            FormStyle.InitDataGridView(dataGridView1);
            Init();
        }
        /// <summary>
        /// 初始化
        /// </summary>
        private void Init()
        {
            if (_student != null)
            {
                label3.Text = _student.StudentName;
                label5.Text = _student.StudentCode;
            }
            _rr9.Change15693();
            _rr9.StartUidListen(YingXinRr9_UidListen);
            TimingBegin();
        }

        private void YingXinRr9_UidListen(List<string> uidList)
        {
            var list = _itemService.QueryList(uidList);
            BeginInvoke(new MethodInvoker(() =>
            {
                button2.Enabled = list.Count != 0;
                label8.Text = $@"共{list.Count}个";
                if (dataGridView1.Rows.Count == list.Count)
                {
                    for (int i = 0; i < list.Count; i++)
                    {
                        var item = list[i];
                        dataGridView1.Rows[i].Cells[0].Value = item.ItemName;
                        dataGridView1.Rows[i].Cells[1].Value = item.ItemType;
                        dataGridView1.Rows[i].Cells[2].Value = item.Uid;
                        dataGridView1.Rows[i].Tag = item.Id;
                    }
                }
                else
                {
                    dataGridView1.Rows.Clear();
                    foreach (var item in list)
                    {
                        var index = dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid);
                        dataGridView1.Rows[index].Tag = item.Id;
                    }
                }
            }));
        }
        /// <summary>
        /// 窗体关闭事件
        /// </summary>
        private void FrmReadItem_FormClosing(object sender, FormClosingEventArgs e)
        {
            FormClosing -= FrmReadItem_FormClosing;
            Owner.Close();
        }

        /// <summary>
        /// 计时开始
        /// </summary>
        private void TimingBegin()
        {
            var timeout = ConfigurationManager.AppSettings["Timeout"];
            BeginInvoke(new MethodInvoker(() =>
            {
                label1.Text = timeout;
                timer1.Start();
            }));
        }
        /// <summary>
        /// 计时结束
        /// </summary>
        private void TimingEnd()
        {
            BeginInvoke(new MethodInvoker(() =>
            {
                label1.Text = string.Empty;
                timer1.Stop();
            }));
        }

        /// <summary>
        /// 返回按钮
        /// </summary>
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }

        /// <summary>
        /// 确认按钮
        /// </summary>
        private void button2_Click(object sender, EventArgs e)
        {
            _rr9.StopUidListen();
            var list = (from DataGridViewRow row in dataGridView1.Rows select new Item
                {
                    Id = Convert.ToInt32(row.Tag),
                    ItemName = Convert.ToString(row.Cells[0].Value),
                    ItemType = Convert.ToString(row.Cells[1].Value),
                    Uid = Convert.ToString(row.Cells[2].Value),
                }).ToList();
            var girdview = _circulationService.LoanItem(list, _student);
            var successCount = girdview.Count(x => x.ExecuteResult);
            if (_son == null)
            {
                TimingEnd();
                _son = new FrmLoanEnd(_student, girdview)
                {
                    Owner = this,
                    SuccessCount = successCount
                };
                _son.Retreat += Retreat;
            }
            else
            {
                SubmitPostBack?.Invoke(sender, new SubmitPostBackEventArgs
                {
                    View = girdview,
                    SuccessCount = successCount
                });
            }
            label7.Text = (Convert.ToInt32(label7.Text) + successCount).ToString();
            _son.Show();
            Hide();
        }

        #region 事件处理程序

        /// <summary>
        /// 超时处理
        /// </summary>
        private void timer1_Tick(object sender, EventArgs e)
        {
            var timeout = Convert.ToInt32(label1.Text);
            timeout--;
            label1.Text = timeout.ToString();
            if (timeout == 0)
            {
                Close();
            }
        }

        /// <summary>
        /// gird显示行号
        /// </summary>
        private void dataGridView1_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            FormStyle.DataGridViewShowLineNumber(sender, e, Font);
        }

        /// <summary>
        /// 回退处理
        /// </summary>
        public void Retreat(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();
            _rr9.Change15693();
            _rr9.StartUidListen(YingXinRr9_UidListen);
            Show();
            _son.Hide();
            TimingBegin();
        }

        #endregion 事件处理程序
    }
}
