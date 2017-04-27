﻿using System;
using System.Configuration;
using System.Linq;
using System.Windows.Forms;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Event;
using ItemCirculation.Util;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanSubmit : Form
    {

        private FrmLoanEnd _son;

        public SubmitPostBackEventHandler SubmitPostBack { get; set; }
        public StudentView StudentView { get; set; }

        public FrmLoanSubmit()
        {
            InitializeComponent();
        }

        private void FrmLoanSubmit_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
            FormStyle.InitDataGridView(dataGridView1);
            using (var db = new MySqlDbContext())
            {
                var list = db.Item.ToList();
                label8.Text = $@"共{list.Count}本";
                foreach (var item in list)
                {
                    var index = dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid);
                    dataGridView1.Rows[index].Tag = item.Id;
                }
            }
            Init();
        }
        /// <summary>
        /// 初始化
        /// </summary>
        private void Init()
        {
            if (StudentView != null)
            {
                label3.Text = StudentView.StudentName;
                label5.Text = StudentView.StudentCode;
            }
            TimingBegin();
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
            label1.Text = timeout;
            timer1.Start();
        }

        /// <summary>
        /// 计时结束
        /// </summary>
        private void TimingEnd()
        {
            label1.Text = string.Empty;
            timer1.Stop();
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
            if (_son == null)
            {
                TimingEnd();
                _son = new FrmLoanEnd
                {
                    Owner = this,
                    StudentView = StudentView,
                };
                _son.LoanEndRetreat += FrmLoanEnd_Retreat;
                _son.Show();
                Hide();
            }
            else
            {
                using (var db = new MySqlDbContext())
                {
                    var list = db.Item.Select(x => new CirculationView
                    {
                        Uid = x.Uid,
                        ItemNumber = x.ItemNumber,
                        ItemName = x.ItemName,
                        ItemType = x.ItemType,
                        ItemStateCode = x.ItemStateCode,
                        ExecuteResult = true
                    }).ToList();
                    SubmitPostBack?.Invoke(sender, new SubmitPostBackEventArgs { View = list });
                    _son.Show();
                    Hide();
                }
            }
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
        public void FrmLoanEnd_Retreat(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();
            using (var db = new MySqlDbContext())
            {
                var list = db.Item.ToList();
                label8.Text = $@"共{list.Count}本";
                foreach (var item in list)
                {
                    var index = dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid);
                    dataGridView1.Rows[index].Tag = item.Id;
                }
            }
            Show();
            _son.Hide();
            TimingBegin();
        }

        #endregion 事件处理程序
    }
}
