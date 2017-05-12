using System;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;

namespace ItemCirculationManagementBackground.Views.Item
{
    public partial class FrmAddItem : Form
    {
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
            var message = Resources.SuccecssMessage;
            try
            {
                var entity = new Models.Item
                {
                    Uid = txtTagCode.Text,
                    ItemName = txtName.Text,
                    ItemType = txtType.Text,
                    CreateTime = DateTime.Now,
                    ItemStateCode = 1001
                };
                using (var db = new MySqlDbContext())
                {
                    db.Item.Add(entity);
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                message = Resources.FailMessage;
                Loger.Error(ex);
#endif
            }
            MessageBox.Show(message, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show(@"您确认退出吗？", "", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                Close();
            }
        }
    }
}
