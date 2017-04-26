using System;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Util;

namespace ItemCirculation.Views.Return
{
    public partial class FrmReturnEnd : Form
    {
        public FrmReturnEnd()
        {
            InitializeComponent();
        }

        private void FrmReturnEnd_Load(object sender, EventArgs e)
        {
            FormStyle.InitDataGridView(dataGridView1);
            int index = this.dataGridView1.Rows.Add("开一家自己的个性店", "陈兴良", "C2815A9F000104E0", "操作成功");
            dataGridView1.Rows[index].Tag = index;
            index = this.dataGridView1.Rows.Add("诚信善待宽容", "吕来明", "20825A9F000104E0", "操作成功");
            dataGridView1.Rows[index].Tag = index;
            index = this.dataGridView1.Rows.Add("建设工程安全生产法律法规", "柴建国", "0D765A9F000104E0", "操作成功");
            dataGridView1.Rows[index].Tag = index;
            index = this.dataGridView1.Rows.Add("2016全国职称英语等级考试历年真题及全真模拟试卷", "郑少华", "61765A9F000104E0", "操作成功");
            dataGridView1.Rows[index].Tag = index;
            index = this.dataGridView1.Rows.Add("江泽民文选.第一卷", "孙国栋", "ZD2016022", "操作成功");
            dataGridView1.Rows[index].Tag = index;
            index = this.dataGridView1.Rows.Add("科学发展观学习纲要", "侯健", "ZD2016003", "操作成功");
            dataGridView1.Rows[index].Tag = index;
            Init();
        }

        private void Init()
        {
            var timeout = ConfigurationManager.AppSettings["Timeout"];
            label1.Text = timeout;
            timer1.Start();
        }
        /// <summary>
        /// 窗体关闭事件
        /// </summary>
        private void FrmEnd_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.FormClosing -= FrmEnd_FormClosing;
            this.Owner.Close();
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
                this.Close();
            }
        }

        /// <summary>
        /// 返回按钮
        /// </summary>
        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            FormStyle.DataGridViewShowLineNumber(sender, e, this.Font);
        }
    }
}
