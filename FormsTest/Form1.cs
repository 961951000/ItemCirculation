using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using FormsTest.Api;

namespace FormsTest
{
    public partial class Form1 : Form
    {
        YingXinRr9 rr9 = new YingXinRr9();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(rr9.OpenComPort() ? "操作成功！" : "操作失败！");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            rr9.CloseComPort();
            MessageBox.Show("操作成功！");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            MessageBox.Show(rr9.Change14443() ? "操作成功！" : "操作失败！");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            MessageBox.Show(rr9.Change15693() ? "操作成功！" : "操作失败！");
        }

        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            var hid = "";
            if (rr9.GetHid(ref hid))
            {
                textBox1.Text = $"{hid}:{DateTime.Now}";
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            var uidList = new List<string>();
            if (rr9.GetUidList(ref uidList))
            {
                foreach (var item in uidList)
                {
                    textBox1.Text += $"{item}:{DateTime.Now}{Environment.NewLine}";
                }
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            rr9.StartHidListen(Hid);
        }

        private void Hid(string str)
        {
            textBox1.Invoke(new MethodInvoker(delegate ()
            {
                textBox1.Clear();
                textBox1.Text = $"{str}:{DateTime.Now}";
            }));

        }

        private void button8_Click(object sender, EventArgs e)
        {
            rr9.StopHidListen();
        }
        private void button9_Click(object sender, EventArgs e)
        {
            rr9.StartUidListen(Uid);
        }
        private void Uid(List<string> list)
        {
            textBox1.Invoke(new MethodInvoker(delegate ()
            {
                textBox1.Clear();
                foreach (var item in list)
                {
                    textBox1.Text += $"{item}:{DateTime.Now}{Environment.NewLine}";
                }
            }));

        }

        private void button10_Click(object sender, EventArgs e)
        {
            rr9.StopUidListen();
        }
    }
}
