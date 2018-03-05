using System;
using System.Configuration;
using System.Windows.Forms;
using ItemCirculation.Api;
using ItemCirculation.Service;

namespace ItemCirculation.Views.Return
{
    public partial class FrmReturnBegin : Form
    {
        private readonly StudentService _loginService = new StudentService();
        private readonly YingXinRr9 _rr9 = new YingXinRr9();
        public FrmReturnBegin()
        {
            InitializeComponent();
        }

        private void FrmReturnBegin_Load(object sender, EventArgs e)
        {
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
            Init();
        }

        /// <summary>
        /// 初始化
        /// </summary>
        private void Init()
        {
            if (_rr9.OpenComPort())
            {
                _rr9.Change14443();
                _rr9.StartHidListen(YingXinRr9_HidListen);
                TimingBegin();
            }
            else
            {
                MessageBox.Show(@"设备异常！");
                _rr9.CloseComPort();
                Close();
            }
        }

        private void YingXinRr9_HidListen(string hid)
        {
            BeginInvoke(new MethodInvoker(() =>
            {
                label2.Text = @"系统正在处理，请稍后...";
            }));
            _rr9.StopHidListen();
            TimingEnd();
            var student = _loginService.IdentityVerification(hid);
            if (student.Id == null)
            {
                MessageBox.Show(@"用户验证失败！");
                BeginInvoke(new MethodInvoker(Close));
            }
            else
            {
                BeginInvoke(new MethodInvoker(() =>
                {
                    var son = new FrmReturnSubmit(student, _rr9)
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
