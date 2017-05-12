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
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
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
            txtTagCode.Text = BaseTool.ConvertUid(_entity.Uid);
            txtTagCode1.Text = _entity.Uid;
            txtName.Text = _entity.ItemName;
            txtType.Text = _entity.ItemType;
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var entity = db.Item.Single(x => x.Id == _entity.Id);
                    entity.Uid = txtTagCode1.Text;
                    entity.ItemName = txtName.Text;
                    entity.ItemType = txtType.Text;
                    entity.UpdateTime = DateTime.Now;
                    if (entity.Uid != _entity.Uid && db.Item.Any(x => x.Uid == entity.Uid))
                    {
                        MessageBox.Show(@"电子标签已经存在，不能重复添加", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
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
