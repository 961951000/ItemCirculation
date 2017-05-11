using System;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using LibraryManagementBackground.Models;

namespace ItemCirculationManagementBackground.Forms
{
    public partial class FrmAddInstrument : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;
        public FrmAddInstrument()
        {
            InitializeComponent();
        }
        private void FrmAddInstrument_Load(object sender, EventArgs e)
        {
            txtTagCode.Focus();
        }
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            var message = LibraryManagementBackground.Models.Message.SuccecssMessage;
            try
            {
                var entity = new TBook
                {
                    Tid = txtTagCode.Text,
                    Name = txtName.Text,
                    Author = txtType.Text,
                    Createdate = DateTime.Now,
                    Updatedate = DateTime.Now,
                    Barcode = "默认",
                    Callcode = "默认",
                    Status = "默认",
                    Createby = 0,
                    Updateby = 0
                };
                using (var db = new MsSqlDbContext())
                {
                    db.Book.Add(entity);
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
