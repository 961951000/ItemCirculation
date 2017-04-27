using System;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Views.Loan;

namespace ItemCirculation.Views.Return
{
    public partial class FrmReturnBegin : Form
    {
        public FrmReturnBegin()
        {
            InitializeComponent();
        }

        private void FrmReturnBegin_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
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
        private void FrmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.Owner.Show();
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
        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if (keyData == Keys.Enter)
            {
                var son = new FrmReturnSubmit { Owner = this };
                timer1.Stop();
                Hide();
                son.Show();
                return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }
    }
}
