using System;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Api;
using ItemCirculation.Event;
using ItemCirculation.Service;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanBegin : Form
    {
        private readonly LoginService _loginService = new LoginService();
        private readonly YingXinRr9 _rr9 = new YingXinRr9();
        public FrmLoanBegin()
        {
            InitializeComponent();
        }

        private void FrmLoanBegin_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
            Init();
        }
        /// <summary>
        /// 初始化
        /// </summary>
        private void Init()
        {
            _rr9.OpenComPort();
            _rr9.Change14443();
            _rr9.StartHidListen(YingXinRr9_HidListen);
            TimingBegin();
        }

        private void YingXinRr9_HidListen(string hid)
        {
            _rr9.StopHidListen();
            TimingEnd();
            var student = _loginService.IdentityVerification(hid);
            if (student == null)
            {
                MessageBox.Show(@"用户验证失败");
                Invoke(new MethodInvoker(Close));
            }
            else
            {
                Invoke(new MethodInvoker(() =>
                {
                    var son = new FrmLoanSubmit(student, _rr9)
                    {
                        Owner = this
                    };
                    son.Show();
                    Hide();
                }));
            }
        }
        /// <summary>
        /// 窗体关闭事件
        /// </summary>
        private void FrmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            _rr9.CloseHidListen();
            _rr9.CloseUidListen();
            _rr9.CloseComPort();
            Owner.Show();
        }
        /// <summary>
        /// 计时开始
        /// </summary>
        private void TimingBegin()
        {
            var timeout = ConfigurationManager.AppSettings["Timeout"];
            Invoke(new MethodInvoker(() =>
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
            Invoke(new MethodInvoker(() =>
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

        #endregion 事件处理程序

    }
}
