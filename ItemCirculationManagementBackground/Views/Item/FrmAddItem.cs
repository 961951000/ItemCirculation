using System;
using System.Linq;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;
using System.Text.RegularExpressions;

namespace ItemCirculationManagementBackground.Views.Item
{
    public partial class FrmAddItem : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        public FrmAddItem()
        {
            InitializeComponent();
        }
        private void FrmAddItem_Load(object sender, EventArgs e)
        {
            txtTagCode.Focus();
        }
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (!Regex.IsMatch(txtTagCode1.Text, "^[0-9A-Fa-f]{16}$"))
                {
                    MessageBox.Show(@"非法电子标签！");
                    return;
                }
                using (var db = new MySqlDbContext())
                {
                    var entity = new Models.Item
                    {
                        Uid = txtTagCode1.Text,
                        ItemName = txtName.Text,
                        ItemType = txtType.Text,
                        CreateTime = DateTime.Now,
                        ItemStateCode = 1001
                    };
                    if (db.Item.Any(x => x.Uid == entity.Uid))
                    {
                        MessageBox.Show(@"电子标签重复", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        db.Item.Add(entity);
                        db.SaveChanges();
                        MessageBox.Show(Resources.SuccecssMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Close();
                        Success?.Invoke(Name);
                    }
                }
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                Loger.Error(ex);
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Close();
#endif
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show(@"您确认退出吗？", "", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                Close();
            }
        }

        private void txtTagCode_TextChanged(object sender, EventArgs e)
        {
            txtTagCode1.Text = BaseTool.ConvertUid(txtTagCode.Text);
        }
    }
}
