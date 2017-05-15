using System;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using ItemCirculationManagementBackground.DatabaseContext;
using ItemCirculationManagementBackground.Models;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;
using MySql.Data.MySqlClient;

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
                            if (variable.Key != null)
                            {
                                var index = cmbGradeName.Items.Add(variable.Key);
                                if (_entity.GradeName == variable.Key)
                                {
                                    selectedIndex = index;
                                }
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
                            if (variable.Key != null)
                            {
                                var index = cmbClassName.Items.Add(variable.Key);
                                if (_entity.ClassName == variable.Key)
                                {
                                    selectedIndex = index;
                                }
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
                if (Resources.IsConvertTid == "1" ? !Regex.IsMatch(txtCardCode10.Text, "^[0-9]{10}$") : !Regex.IsMatch(txtCardCode10.Text, "^[0-9A-Fa-f]{8}$"))
                {
                    MessageBox.Show(@"非法卡号！");
                    return;
                }
                using (var db = new MySqlDbContext())
                {
                    var entity = db.Student.Single(x => x.Id == _entity.Id);
                    entity.CardMacCode = txtCardCode16.Text;
                    entity.StudentCode = txtStudentCode.Text;
                    entity.StudentName = txtName.Text;
                    entity.GradeName = cmbGradeName.Text;
                    entity.ClassName = cmbClassName.Text;
                    entity.UpdateTime = DateTime.Now;
                    if (string.IsNullOrEmpty(entity.CardMacCode))
                    {
                        throw new ArgumentException("非法卡号！");
                    }
                    if (entity.CardMacCode != _entity.CardMacCode && db.Student.Any(x => x.CardMacCode == entity.CardMacCode))
                    {
                        MessageBox.Show(@"卡号重复", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
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

        private void txtCardCode10_TextChanged(object sender, EventArgs e)
        {
            txtCardCode16.Text = BaseTool.ConvertTid(txtCardCode10.Text);
        }

        private void cmbGradeName_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbClassName.Items.Clear();
            cmbClassName.Text = string.Empty;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var query = db.Student.Where(x => x.GradeName == cmbGradeName.Text);
                    var groupQuery = query.GroupBy(x => x.ClassName).OrderBy(x => x.Key);
                    if (groupQuery.Any())
                    {
                        foreach (var variable in groupQuery)
                        {
                            if (variable.Key != null)
                            {
                                cmbClassName.Items.Add(variable.Key);
                            }
                        }
                    }
                    if (cmbClassName.Items.Count > 0)
                    {
                        cmbClassName.SelectedIndex = 0;
                    }
                }
            }
            catch (MySqlException mex)
            {
#if DEBUG
                throw;
#else               
                Loger.Error(mex);
                MessageBox.Show(@"数据库连接异常！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else               
                Loger.Error(ex);
                MessageBox.Show(@"设备异常！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
        }
    }
}
