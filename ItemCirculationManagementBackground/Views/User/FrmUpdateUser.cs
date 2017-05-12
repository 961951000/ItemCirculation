using System;
using System.Linq;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;

namespace ItemCirculationManagementBackground.Views.User
{
    public partial class FrmUpdateUser : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        private readonly Models.Student _entity;
        public FrmUpdateUser()
        {
            InitializeComponent();
        }
        public FrmUpdateUser(Models.Student entity)
        {
            InitializeComponent();
            _entity = entity;
        }

        private void FrmUpdateUser_Load(object sender, EventArgs e)
        {
            try
            {
                txtCardCode10.Text = Resources.IsConvertTid == "1" ? BitConverter.ToUInt32(BaseTool.StringToByteArray(_entity.CardMacCode), 0).ToString() : _entity.CardMacCode;
            }
            catch (Exception)
            {
                txtCardCode10.Text = _entity.CardMacCode;
            }
            txtCardCode16.Text = _entity.CardMacCode;
            txtStudentCode.Text = _entity.StudentCode;
            txtName.Text = _entity.StudentName;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var selectedIndex = -1;
                    var query = db.Student.GroupBy(x => x.GradeName).OrderBy(x => x.Key);
                    if (query.Any())
                    {
                        foreach (var variable in query)
                        {
                            var index = cmbGradeName.Items.Add(variable.Key);
                            if (_entity.GradeName == variable.Key)
                            {
                                selectedIndex = index;
                            }
                        }
                        cmbGradeName.SelectedIndex = selectedIndex;
                        selectedIndex = -1;
                    }
                    var query1 = db.Student.GroupBy(x => x.ClassName).OrderBy(x => x.Key);
                    if (query1.Any())
                    {
                        foreach (var variable in query1)
                        {
                            var index = cmbClassName.Items.Add(variable.Key);
                            if (_entity.ClassName == variable.Key)
                            {
                                selectedIndex = index;
                            }
                        }
                        cmbClassName.SelectedIndex = selectedIndex;
                    }
                }
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                Loger.Error(ex);
#endif
            }
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var entity = db.Student.Single(x => x.Id == _entity.Id);
                    entity.CardMacCode = txtCardCode16.Text;
                    entity.StudentCode = txtStudentCode.Text;
                    entity.StudentName = txtName.Text;
                    entity.GradeName = cmbGradeName.Text;
                    entity.ClassName = cmbClassName.Text;
                    entity.UpdateTime = DateTime.Now;
                    db.SaveChanges();
                }
                MessageBox.Show(Resources.SuccecssMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Close();
                Success?.Invoke(Name);
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

        private void txtCardCode10_TextChanged(object sender, EventArgs e)
        {
            txtCardCode16.Text = BaseTool.ConvertTid(txtCardCode10.Text);
        }
    }
}
