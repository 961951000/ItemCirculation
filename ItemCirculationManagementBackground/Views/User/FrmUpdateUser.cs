using System;
using System.Linq;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Util;
using LibraryManagementBackground.Models;

namespace ItemCirculationManagementBackground.Forms
{
    public partial class FrmUpdateUser : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        private readonly TUser _entity;
        public FrmUpdateUser(TUser entity)
        {
            InitializeComponent();
            _entity = entity;
            txtCardCode.Text = entity.Cardcode;
            txtStudentCode.Text = entity.Patroncode;
            txtName.Text = entity.Name;
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            var message = LibraryManagementBackground.Models.Message.SuccecssMessage;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var entity = db.User.Single(x => x.Id == _entity.Id);
                    entity.Cardcode = txtCardCode.Text;
                    entity.Patroncode = txtStudentCode.Text;
                    entity.Name = txtName.Text;
                    entity.Updatedate = DateTime.Now;
                    //db.Entry(entity).State = System.Data.Entity.EntityState.Modified;//修改
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                message = LibraryManagementBackground.Models.Message.FailMessage;
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
