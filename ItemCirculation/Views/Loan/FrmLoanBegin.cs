using System;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Service;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanBegin : Form
    {
        private readonly LoginService _loginService = new LoginService();
        public delegate void IdentityVerificationFinishHandler(StudentView entity);
        public FrmLoanBegin()
        {
            InitializeComponent();
        }

        private void FrmLoanBegin_Load(object sender, EventArgs e)
        {
            Init();
        }
        private void LoginService_IdentityVerification(StudentView entity)
        {
            if (entity == null)
            {
                MessageBox.Show(@"用户验证失败");
                Close();
            }
            else
            {
                timer1.Stop();
                var son = new FrmLoanSubmit
                {
                    Owner = this,
                    StudentView = entity,
                };
                son.Show();
                Hide();
            }
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
            Owner.Show();
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
        /// 返回按钮
        /// </summary>
        private void button1_Click(object sender, EventArgs e)
        {
            Close();
        }
        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if (keyData == Keys.Enter)
            {
                _loginService.IdentityVerificationFinish += LoginService_IdentityVerification;
                _loginService.IdentityVerification("1619397716");
                return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }
    }
}
