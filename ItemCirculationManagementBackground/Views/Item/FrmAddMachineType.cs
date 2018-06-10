using System;
using System.Windows.Forms;
using ItemCirculation.Data.DatabaseContext;
using ItemCirculation.Data.Models;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;

namespace ItemCirculationManagementBackground.Views.Item
{
    public partial class FrmAddMachineType : Form
    {
        public delegate void SuccessHandler(string address);
        public event SuccessHandler Success;

        public FrmAddMachineType()
        {
            InitializeComponent();
        }


        private void FrmAddMachineType_Load(object sender, EventArgs e)
        {
            txtMachineType.Focus();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var entity = new MachineType
                    {
                        TypeName = txtMachineType.Text
                    };

                    db.MachineType.Add(entity);
                    db.SaveChanges();
                    MessageBox.Show(Resources.SuccecssMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Close();
                    Success?.Invoke(Name);

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
    }
}
