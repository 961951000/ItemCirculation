using System;
using System.Configuration;
using System.Linq;
using System.Windows.Forms;
using ItemCirculation.DatabaseContext;
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
            SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer | ControlStyles.ResizeRedraw | ControlStyles.UserPaint, true); //减弱闪烁效果
            FormStyle.InitDataGridView(dataGridView1);
            using (var db = new MySqlDbContext())
            {
                var list = db.Item.ToList();
                label7.Text = list.Count.ToString();
                foreach (var item in list)
                {
                    int index = this.dataGridView1.Rows.Add(item.ItemName, item.ItemType, item.Uid);
                    dataGridView1.Rows[index].Tag = item.Id;
                }
            }
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
