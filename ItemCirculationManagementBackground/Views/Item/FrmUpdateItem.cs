using System;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;
using ItemCirculation.Data.DatabaseContext;

namespace ItemCirculationManagementBackground.Views.Item
{
    public partial class FrmUpdateItem : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        private readonly ItemCirculation.Data.Models.Item _entity;

        public FrmUpdateItem()
        {
            InitializeComponent();
        }

        public FrmUpdateItem(ItemCirculation.Data.Models.Item entity)
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
            txtLocation.Text = _entity.ItemLocation;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var list = db.MachineType.ToList();
                    cboMachineName.DataSource = list;
                    cboMachineName.DisplayMember = "TypeName";
                    cboMachineName.ValueMember = "Id";
                    for (var i = 0; i < list.Count; i++)
                    {
                        if (list.ElementAt(i).Id == _entity.MachineId)
                        {
                            cboMachineName.SelectedIndex = i;
                            break;
                        }
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
#endif
            }
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
                    var entity = db.Item.Single(x => x.Id == _entity.Id);
                    entity.Uid = txtTagCode1.Text;
                    entity.ItemName = txtName.Text;
                    entity.ItemType = txtType.Text;
                    entity.ItemLocation = txtLocation.Text;
                    entity.UpdateTime = DateTime.Now;
                    entity.MachineId = Convert.ToInt32(cboMachineName.SelectedValue);
                    if (entity.Uid != _entity.Uid && db.Item.Any(x => x.Uid == entity.Uid))
                    {
                        MessageBox.Show(@"电子标签重复", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
