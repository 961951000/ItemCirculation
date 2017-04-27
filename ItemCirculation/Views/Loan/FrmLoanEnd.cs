using System;
using System.Configuration;
using System.Linq;
using System.Windows.Forms;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Event.EventArgs;
using ItemCirculation.Util;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanEnd : Form
    {
        private long _successCount;
        public event EventHandler<RetreatEventArgs> LoanEndRetreat;
        public StudentView StudentView { get; set; }
        public FrmLoanEnd()
        {
            InitializeComponent();
        }

        private void FrmLoanEnd_Load(object sender, EventArgs e)
        {
            FormStyle.InitDataGridView(dataGridView1);
            using (var db = new MySqlDbContext())
            {
                var list = db.Item.ToList();
                label7.Text = list.Count.ToString();
                foreach (var item in list)
                {
                    var index = dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid);
                    dataGridView1.Rows[index].Tag = item.Id;
                }
            }
            Init();
        }

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
        private void FrmEnd_FormClosing(object sender, FormClosingEventArgs e)
        {
            FormClosing -= FrmEnd_FormClosing;
            Owner.Close();
        }

        /// <summary>
        /// 计时器
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

        private void dataGridView1_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            FormStyle.DataGridViewShowLineNumber(sender, e, Font);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            TimingEnd();
            var parent = Owner as FrmLoanSubmit;
            if (parent != null)
            {
                parent.SubmitPostBack = FrmLoanSubmit_SubmitPostBack;
            }
            LoanEndRetreat?.Invoke(sender, new RetreatEventArgs { SuccessCount = _successCount });
        }
        public void FrmLoanSubmit_SubmitPostBack(object sender, SubmitPostBackEventArgs e)
        {
            var list = e.View;
            label7.Text = (Convert.ToInt32(label7.Text) + list.Count(x => x.ExecuteResult)).ToString();
            _successCount = Convert.ToInt32(label7.Text);
            foreach (var item in list)
            {
                var index = dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid, item.ExecuteResult ? "操作成功" : "操作失败");
                dataGridView1.Rows[index].Tag = item.ItemId;
            }
            TimingBegin();
        }
    }
}
