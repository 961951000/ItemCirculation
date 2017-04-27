using System;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Event;
using ItemCirculation.Service;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanBegin : Form
    {
        private readonly LoginService _loginService = new LoginService();
        public FrmLoanBegin()
        {
            InitializeComponent();
        }

        private void FrmLoanBegin_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
            Init();
        }

        private void Init()
        {
            TimingBegin();
        }

        /// <summary>
        /// 窗体关闭事件
        /// </summary>
        private void FrmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            Owner.Show();
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
        /// 身份验证结束处理
        /// </summary>
        private void LoginService_IdentityVerification(object sender, IdentityVerificationFinishEventArgs e)
        {
            var entity = e.View;
            if (entity == null)
            {
                MessageBox.Show(@"用户验证失败");
                Close();
            }
            else
            {
                TimingEnd();
                var son = new FrmLoanSubmit
                {
                    Owner = this,
                    StudentView = entity,
                };
                son.Show();
                Hide();
            }
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

        #endregion 事件处理程序

    }
}
