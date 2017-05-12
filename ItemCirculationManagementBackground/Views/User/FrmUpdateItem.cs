using System;
using System.Linq;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;

namespace ItemCirculationManagementBackground.Views.Item
{
    public partial class FrmUpdateItem : Form
    {
        private readonly Models.Item _entity;
        public FrmUpdateItem()
        {
            InitializeComponent();
        }
        public FrmUpdateItem(Models.Item entity)
        {
            InitializeComponent();
            _entity = entity;
        }

        private void FrmUpdateItem_Load(object sender, EventArgs e)
        {
            txtTagCode.Text = _entity.Uid;
            txtName.Text = _entity.ItemName;
            txtType.Text = _entity.ItemType;
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            var message = Resources.SuccecssMessage;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var entity = db.Item.Single(x => x.Id == _entity.Id);
                    entity.Uid = txtTagCode.Text;
                    entity.ItemName = txtName.Text;
                    entity.ItemType = txtType.Text;
                    entity.UpdateTime = DateTime.Now;
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
