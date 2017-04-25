using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ItemCirculation.Views.Loan
{
    public partial class FrmLoanSubmit : Form
    {
        public FrmLoanSubmit()
        {
            InitializeComponent();
        }

        private void FrmLoanSubmit_Load(object sender, EventArgs e)
        {

            InitDataGridView(dataGridView1);
            for (int i = 0; i < 10; i++)
            {
                int index = this.dataGridView1.Rows.Add("笔记本电脑", "联想");
                dataGridView1.Rows[index].Tag = i;
            }
            Init();
        }
        public void InitDataGridView(DataGridView dgv)
        {
            //只读属性设置 
            dgv.ReadOnly = true;
            //尾行自动追加 
            dgv.AllowUserToAddRows = false;
            dgv.AllowUserToDeleteRows = false;
            //行幅自动变化               
            dgv.AllowUserToResizeRows = true;
            //高度设定               
            dgv.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            //标头设定                 
            dgv.RowHeadersVisible = true;
            //标题行高 
            dgv.ColumnHeadersHeight = 25;
            dgv.RowTemplate.Height = 23;
            //行选择设定 
            dgv.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            //多行选择 
            dgv.MultiSelect = false;
            //选择状态解除 
            dgv.ClearSelection();
            //head文字居中       
            dgv.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            //选择状态的行的颜色 
            dgv.DefaultCellStyle.SelectionBackColor = Color.LightSteelBlue;
            dgv.DefaultCellStyle.SelectionForeColor = Color.Black;
            //设定交替行颜色 
            dgv.AlternatingRowsDefaultCellStyle.BackColor = Color.White;
            dgv.RowsDefaultCellStyle.BackColor = Color.LightGray;
            //行副填充时自动调整宽度 
            dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv.AutoGenerateColumns = false;
            //可否手动调整行大小 
            dgv.AllowUserToResizeRows = false;
            dgv.AutoGenerateColumns = false;
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
        private void FrmReadItem_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.FormClosing -= FrmReadItem_FormClosing;
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
        /// <summary>
        /// 确认按钮
        /// </summary>
        private void button2_Click(object sender, EventArgs e)
        {
            var son = new FrmLoanEnd { Owner = this };
            this.timer1.Stop();
            this.Hide();
            son.Show();
        }
        /// <summary>
        /// 设置grid交替行颜色
        /// </summary>
        public static void SetGridAlternatingRows(DataGridView dg)
        {
            if (dg != null)
            {
                dg.RowsDefaultCellStyle.BackColor = Color.FromArgb(255, 255, 255);
                dg.AlternatingRowsDefaultCellStyle.BackColor = Color.Wheat;
            }
        }

        private void dataGridView1_RowPostPaint(object sender, DataGridViewRowPostPaintEventArgs e)
        {
            var grid = sender as DataGridView;
            var rowIdx = (e.RowIndex + 1).ToString();
            var centerFormat = new StringFormat()
            {
                // right alignment might actually make more sense for numbers  
                Alignment = StringAlignment.Center,
                LineAlignment = StringAlignment.Center
            };
            if (grid == null) return;
            var headerBounds = new Rectangle(e.RowBounds.Left, e.RowBounds.Top, grid.RowHeadersWidth, e.RowBounds.Height);
            e.Graphics.DrawString(rowIdx, this.Font, SystemBrushes.ControlText, headerBounds, centerFormat);
        }
    }
}
