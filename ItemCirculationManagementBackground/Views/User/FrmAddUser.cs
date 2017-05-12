using System;
using System.Linq;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Properties;

namespace ItemCirculationManagementBackground.Views.User
{
    public partial class FrmAddUser : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        public FrmAddUser()
        {
            InitializeComponent();
        }
        private void FrmAddUser_Load(object sender, EventArgs e)
        {
            txtCardCode.Focus();
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var query = db.Student.GroupBy(x => x.GradeName).OrderBy(x=>x.Key);
                    if (query.Any())
                    {
                        foreach (var variable in query)
                        {
                            cmbGradeName.Items.Add(variable.Key);
                        }
                    }
                    var query1 = db.Student.GroupBy(x => x.ClassName).OrderBy(x => x.Key);
                    if (query1.Any())
                    {
                        foreach (var variable in query1)
                        {
                            cmbClassName.Items.Add(variable.Key);
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
#endif
            }
        }
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            var message = Resources.SuccecssMessage;
            try
            {
                var entity = new Models.Student
                {
                    CardMacCode = txtCardCode.Text,
                    StudentCode = txtStudentCode.Text,
                    StudentName = txtName.Text,
                    GradeName = cmbGradeName.Text,
                    ClassName = cmbClassName.Text,
                    CreateTime = DateTime.Now
                };
                using (var db = new MySqlDbContext())
                {
                    db.Student.Add(entity);
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                message = Resources.FailMessage;
#if DEBUG
                throw;
#else
                Loger.Error(ex);
#endif
            }
            Success?.Invoke(Name);
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
