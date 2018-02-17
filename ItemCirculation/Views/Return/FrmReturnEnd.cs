using System;
using System.Collections.Generic;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Data.Models;
using ItemCirculation.Event;
using ItemCirculation.Util;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Views.Return
{
    public partial class FrmReturnEnd : Form
    {
        public event EventHandler<EventArgs> EndRetreat;
        private readonly Student _student;
        private readonly List<CirculationView> _girdView;
        public int SuccessCount { get; set; }

        public FrmReturnEnd()
        {
            InitializeComponent();
        }

        public FrmReturnEnd(Student student, List<CirculationView> girdView)
        {
            _student = student;
            _girdView = girdView;
            InitializeComponent();
        }

        private void FrmReturnEnd_Load(object sender, EventArgs e)
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
            label3.Text = _student?.StudentName;
            label5.Text = _student?.StudentCode;
            label7.Text = SuccessCount.ToString();
            foreach (var variable in _girdView)
            {
                var index = dataGridView1.Rows.Add(variable.ItemName, variable.ItemType, variable.Uid, variable.ExecuteResult ? "操作成功" : "操作失败");
                dataGridView1.Rows[index].Tag = variable.ItemId;
            }
            TimingBegin();
        }

        /// <summary>
        /// 窗体关闭事件
        /// </summary>
        private void FrmEnd_FormClosing(object sender, FormClosingEventArgs e)
        {
            FormClosing -= FrmEnd_FormClosing;
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

        private void button2_Click(object sender, EventArgs e)
        {
            TimingEnd();
            if (Owner is FrmReturnSubmit parent)
            {
                parent.SubmitPostBack = SubmitPostBack;
            }
            EndRetreat?.Invoke(sender, e);
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
        /// 提交后处理程序
        /// </summary>
        public void SubmitPostBack(object sender, EventArgs e)
        {
            if (!(e is SubmitPostBackEventArgs args)) { return; }
            var list = args.View;
            SuccessCount += args.SuccessCount;
            label7.Text = SuccessCount.ToString();
            foreach (var item in list)
            {
                var index = dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid, item.ExecuteResult ? "操作成功" : "操作失败");
                dataGridView1.Rows[index].Tag = item.ItemId;
            }
            TimingBegin();
        }

        #endregion 事件处理程序

    }
}
