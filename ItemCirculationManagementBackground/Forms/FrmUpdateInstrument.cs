using System;
using System.Linq;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using LibraryManagementBackground.Models;

namespace ItemCirculationManagementBackground.Forms
{
    public partial class FrmUpdateInstrument : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        private readonly TBook _entity;
        public FrmUpdateInstrument(TBook entity)
        {
            InitializeComponent();
            _entity = entity;
            txtTagCode.Text = entity.Tid;
            txtName.Text = entity.Name;
            txtType.Text = entity.Author;
        }
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            var message = LibraryManagementBackground.Models.Message.SuccecssMessage;
            try
            {
                using (var db = new MsSqlDbContext())
                {
                    var entity = db.Book.Single(x => x.Id == _entity.Id);
                    entity.Tid = txtTagCode.Text;
                    entity.Name = txtName.Text;
                    entity.Author = txtType.Text;
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
