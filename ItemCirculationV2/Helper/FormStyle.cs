using System.Drawing;
using System.Windows.Forms;

namespace ItemCirculationV2.Helper
{
    public class FormStyle
    {
        /// <summary>
        /// 初始化grid样式
        /// </summary>
        /// <param name="dgv"></param>
        public static void InitDataGridView(DataGridView dgv)
        {
            dgv.Font = new Font("宋体", 24);
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
            dgv.ColumnHeadersHeight = 50;
            dgv.RowTemplate.Height = 46;
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
            //数据居中显示
            DataGridViewCellStyle dataGridViewCellStyle1 = new DataGridViewCellStyle
            {
                Alignment = DataGridViewContentAlignment.MiddleCenter
            };
            dgv.DefaultCellStyle = dataGridViewCellStyle1;
            SetGridAlternatingRows(dgv);
        }

        /// <summary>
        /// 设置grid交替行颜色
        /// </summary>
        public static void SetGridAlternatingRows(DataGridView dgv)
        {
            if (dgv == null) { return; }
            dgv.RowsDefaultCellStyle.BackColor = Color.FromArgb(255, 255, 255);
            dgv.AlternatingRowsDefaultCellStyle.BackColor = Color.Wheat;
        }

        /// <summary>
        /// grid显示行号
        /// </summary>
        public static void DataGridViewShowLineNumber(object sender, DataGridViewRowPostPaintEventArgs e, Font font)
        {
            var grid = sender as DataGridView;
            var rowIdx = (e.RowIndex + 1).ToString();
            var centerFormat = new StringFormat()
            {
                Alignment = StringAlignment.Center,
                LineAlignment = StringAlignment.Center
            };
            if (grid == null) return;
            var headerBounds = new Rectangle(e.RowBounds.Left, e.RowBounds.Top, grid.RowHeadersWidth, e.RowBounds.Height);
            e.Graphics.DrawString(rowIdx, new Font("宋体", 24), SystemBrushes.ControlText, headerBounds, centerFormat);
        }
    }
}
