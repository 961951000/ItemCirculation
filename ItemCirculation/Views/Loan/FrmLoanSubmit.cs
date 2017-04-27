using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Windows.Forms;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Event;
using ItemCirculation.Models;
using ItemCirculation.Service;
using ItemCirculation.Util;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanSubmit : Form
    {
        private FrmLoanEnd _son;
        private readonly LoanService _loanService = new LoanService();
        public SubmitPostBackEventHandler SubmitPostBack { get; set; }
        public Student Student { get; set; }

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
            if (Student != null)
            {
                label3.Text = Student.StudentName;
                label5.Text = Student.StudentCode;
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
            var list = new List<Item>();
            using (var db = new MySqlDbContext())
            {
                list.AddRange(dataGridView1.Rows.Cast<DataGridViewRow>()
                    .Select(variable => Convert.ToInt32(variable.Tag))
                    .Select(tag => db.Item.Single(x => x.Id == tag)));
            }
            var girdview = _loanService.Circulation(list, Student);
            var successCount = girdview.Count(x => x.ExecuteResult);
            if (_son == null)
            {
                TimingEnd();
                _son = new FrmLoanEnd
                {
                    Owner = this,
                    Student = Student,
                    GirdView = girdview,
                    SuccessCount = successCount
                };
                _son.LoanEndRetreat += FrmLoanEnd_Retreat;
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
        public void FrmLoanEnd_Retreat(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();
            using (var db = new MySqlDbContext())
            {
                var list = db.Item.ToList();
                label8.Text = $@"共{list.Count}件";
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
