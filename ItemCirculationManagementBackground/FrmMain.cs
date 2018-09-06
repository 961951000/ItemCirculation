using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Windows.Forms;
using AutoMapper;
using ItemCirculation.Data.DatabaseContext;
using ItemCirculation.Data.Models;
using ItemCirculationManagementBackground.Properties;
using ItemCirculationManagementBackground.Util;
using ItemCirculationManagementBackground.Util.Extensions;
using ItemCirculationManagementBackground.ViewModels;
using ItemCirculationManagementBackground.Views.Item;
using ItemCirculationManagementBackground.Views.User;
using MySql.Data.MySqlClient;

namespace ItemCirculationManagementBackground
{
    public partial class FrmMain : Form, IMessageFilter
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

            #region listView初始化
            /*listView1.GridLines = true;//表格是否显示网格线
            listView1.FullRowSelect = true;//是否选中整行
            listView1.View = View.Details;//设置显示方式
            listView1.Scrollable = true;//是否自动显示滚动条
            listView1.MultiSelect = false;//是否可以选择多行
            listView1.Columns["ProductName"].Width = -1;//根据内容设置宽度
            listView1.Columns["SN"].Width = -2;//根据标题设置宽度*/
            #endregion
            Init();
        }

        private void Init()
        {
            lblLabelSwitchingProgress1.Text = string.Empty;
            lblLabelSwitchingProgress2.Text = string.Empty;
            lblUserProgress1.Text = string.Empty;
            lblUserProgress2.Text = string.Empty;
            cboCirculationOrder.SelectedIndex = 5;
            cboLabelSwitchingQueryOrder.SelectedIndex = 2;
            cboUserQueryOrder.SelectedIndex = 3;
            dtpActionStartTime.Value = DateTime.Parse(DateTime.Now.ToString("yyyy-01-01"));
            dtpActionEndTime.Value = DateTime.Parse(DateTime.Now.AddDays(1).ToString("yyyy-MM-dd"));
            IndexInit();
            MakingCardInIt();
        }

        /// <summary>
        /// 开卡办证初始化
        /// </summary>
        private void MakingCardInIt()
        {
            cmbGradeName.Items.Clear();
            cmbGradeName.Items.Add("ALL");
            cmbGradeName.SelectedIndex = 0;
            cmbClassName.Items.Clear();
            cmbClassName.Items.Add("ALL");
            cmbClassName.SelectedIndex = 0;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var query = db.Student.GroupBy(x => x.GradeName).OrderBy(x => x.Key);
                    if (query.Any())
                    {
                        foreach (var variable in query)
                        {
                            if (variable.Key != null)
                            {
                                cmbGradeName.Items.Add(variable.Key);
                            }
                        }
                    }
                    var query1 = db.Student.GroupBy(x => x.ClassName).OrderBy(x => x.Key);
                    if (query1.Any())
                    {
                        foreach (var variable in query1)
                        {
                            if (variable.Key != null)
                            {
                                cmbClassName.Items.Add(variable.Key);
                            }
                        }
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

        private void Success(string address)
        {
            switch (address)
            {
                case "FrmAddItem":
                    {
                        LabelSwitchingQuery();
                    }
                    break;
                case "FrmUpdateItem":
                    {
                        LabelSwitchingQuery();
                    }
                    break;
                case "FrmAddUser":
                    {
                        MakingCardInIt();
                        StudentQuery();
                    }
                    break;
                case "FrmUpdateUser":
                    {
                        MakingCardInIt();
                        StudentQuery();
                    }
                    break;
            }
        }

        #region 查询统计

        /// <summary>
        /// 查询统计 - 查询
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnQueryCirculation_Click(object sender, EventArgs e)
        {
            QueryCirculation();
        }

        /// <summary>
        /// 查询统计 - 查询
        /// </summary>
        private void QueryCirculation()
        {
            lvwCirculation.Items.Clear();
            try
            {
                using (var db = new MySqlDbContext())
                {
                    const string sql = "SELECT a.id AS Id, a.action_time AS 'ActionTime', b.student_name AS 'StudentName', b.student_code AS 'StudentCode', c.item_name AS 'ItemName', c.item_type AS 'ItemType', c.item_location AS 'ItemLocation', d.action_type AS 'ActionType' FROM circulation_record AS a LEFT JOIN student AS b ON a.student_card_mac_code = b.card_mac_code LEFT JOIN item AS c ON a.item_uid = c.uid LEFT JOIN ( SELECT x.id, IFNULL( CONCAT( x.action_name, '-', y.action_type_name ), x.action_name ) AS action_type FROM action AS x LEFT JOIN action_type AS y ON x.action_type_id = y.id ) d ON a.action_id = d.id";
                    var query = db.Database.SqlQuery<CirculationRecordViewModel>(sql).Where(x => x.ActionTime >= DateTime.Parse(dtpActionStartTime.Value.ToString("yyyy-MM-dd")) && x.ActionTime <= DateTime.Parse(dtpActionEndTime.Value.ToString("yyyy-MM-dd")));
                    var uid = BaseTool.ConvertUid(txtItemUid.Text);
                    var itemName = txtInstrumentNameGet.Text;
                    var itemType = txtInstrumentTypeGet.Text;
                    var studentCode = txtLendUserStudentGet.Text;
                    var studentName = txtLendUserNameGet.Text;
                    if (!string.IsNullOrEmpty(uid))
                    {
                        query = query.Where(x => x.ItemUid.Contains(uid));
                    }
                    if (!string.IsNullOrEmpty(itemName))
                    {
                        query = query.Where(x => x.ItemName.Contains(itemName));
                    }
                    if (!string.IsNullOrEmpty(itemType))
                    {
                        query = query.Where(x => x.ItemType.Contains(itemType));
                    }
                    if (!string.IsNullOrEmpty(studentCode))
                    {
                        query = query.Where(x => x.StudentCode.Contains(studentCode));
                    }
                    if (!string.IsNullOrEmpty(studentName))
                    {
                        query = query.Where(x => x.StudentName.Contains(studentName));
                    }
                    switch (cboCirculationOrder.SelectedIndex)
                    {
                        case 0:
                            {
                                query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ItemName) : query.OrderByDescending(x => x.ItemName);
                            }
                            break;
                        case 1:
                            {
                                query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ItemType) : query.OrderByDescending(x => x.ItemType);
                            }
                            break;
                        case 2:
                            {
                                query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.StudentName) : query.OrderByDescending(x => x.StudentName);
                            }
                            break;
                        case 3:
                            {
                                query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.StudentCode) : query.OrderByDescending(x => x.StudentCode);
                            }
                            break;
                        case 4:
                            {
                                query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ItemLocation) : query.OrderByDescending(x => x.ItemLocation);
                            }
                            break;
                        case 5:
                            {
                                query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ActionTime) : query.OrderByDescending(x => x.ActionTime);
                            }
                            break;
                    }
                    var list = query.ToList();
                    for (var i = 0; i < list.Count; i++)
                    {
                        var entity = list[i];
                        var item = new ListViewItem
                        {
                            Tag = entity.Id,
                            Text = (i + 1).ToString()
                        };
                        item.SubItems.Add(entity.StudentName);
                        item.SubItems.Add(entity.StudentCode);
                        item.SubItems.Add(entity.ItemName);
                        item.SubItems.Add(entity.ItemType);
                        item.SubItems.Add(entity.ItemLocation);
                        item.SubItems.Add(Convert.ToDateTime(entity.ActionTime).ToString("yyyy-MM-dd HH:mm:ss"));
                        item.SubItems.Add(entity.ActionType);
                        lvwCirculation.Items.Add(item);
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

        /// <summary>
        /// 更多功能-导出借还记录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnExportData_Click(object sender, EventArgs e)
        {
            try
            {
                var title = ConfigurationManager.AppSettings["ExcelImportForCirculationRecord"];
                Application.AddMessageFilter(this); //鼠标锁定
                Cursor = Cursors.WaitCursor;
                btnExportData.Enabled = false;
                var sfd = new SaveFileDialog
                {
                    Filter = @"(*.xlsx)|*.xlsx",
                    FileName = title + DateTime.Now.ToString("yyyyMMddhhmmss")
                };
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    var fileName = sfd.FileName;
                    using (var db = new MySqlDbContext())
                    {
                        const string sql = "SELECT a.id AS Id, a.item_uid as ItemUid, a.student_card_mac_code as StudentCardMacCode, a.action_id as ActionId, a.action_time AS 'ActionTime', a.comment as Comment, b.student_name AS 'StudentName', b.student_code AS 'StudentCode', c.item_name AS 'ItemName', c.item_type AS 'ItemType', c.item_location AS 'ItemLocation', d.action_type AS 'ActionType' FROM circulation_record AS a LEFT JOIN student AS b ON a.student_card_mac_code = b.card_mac_code LEFT JOIN item AS c ON a.item_uid = c.uid LEFT JOIN ( SELECT x.id, IFNULL( CONCAT( x.action_name, '-', y.action_type_name ), x.action_name ) AS action_type FROM action AS x LEFT JOIN action_type AS y ON x.action_type_id = y.id ) d ON a.action_id = d.id";
                        var query = db.Database.SqlQuery<CirculationRecordViewModel>(sql).Where(x => x.ActionTime >= DateTime.Parse(dtpActionStartTime.Value.ToString("yyyy-MM-dd")) && x.ActionTime <= DateTime.Parse(dtpActionEndTime.Value.ToString("yyyy-MM-dd")));
                        var uid = BaseTool.ConvertUid(txtItemUid.Text);
                        var itemName = txtInstrumentNameGet.Text;
                        var itemType = txtInstrumentTypeGet.Text;
                        var studentCode = txtLendUserStudentGet.Text;
                        var studentName = txtLendUserNameGet.Text;
                        if (!string.IsNullOrEmpty(uid))
                        {
                            query = query.Where(x => x.ItemUid.Contains(uid));
                        }
                        if (!string.IsNullOrEmpty(itemName))
                        {
                            query = query.Where(x => x.ItemName.Contains(itemName));
                        }
                        if (!string.IsNullOrEmpty(itemType))
                        {
                            query = query.Where(x => x.ItemType.Contains(itemType));
                        }
                        if (!string.IsNullOrEmpty(studentCode))
                        {
                            query = query.Where(x => x.StudentCode.Contains(studentCode));
                        }
                        if (!string.IsNullOrEmpty(studentName))
                        {
                            query = query.Where(x => x.StudentName.Contains(studentName));
                        }
                        switch (cboCirculationOrder.SelectedIndex)
                        {
                            case 0:
                                {
                                    query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ItemName) : query.OrderByDescending(x => x.ItemName);
                                }
                                break;
                            case 1:
                                {
                                    query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ItemType) : query.OrderByDescending(x => x.ItemType);
                                }
                                break;
                            case 2:
                                {
                                    query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.StudentName) : query.OrderByDescending(x => x.StudentName);
                                }
                                break;
                            case 3:
                                {
                                    query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.StudentCode) : query.OrderByDescending(x => x.StudentCode);
                                }
                                break;
                            case 4:
                                {
                                    query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ItemLocation) : query.OrderByDescending(x => x.ItemLocation);
                                }
                                break;
                            case 5:
                                {
                                    query = rdoCirculationOrderAsc.Checked ? query.OrderBy(x => x.ActionTime) : query.OrderByDescending(x => x.ActionTime);
                                }
                                break;
                        }
                        var list = query.Select(Mapper.Map<CirculationRecordViewModel, CirculationRecord>);

                        EPPlusHelper.ExportByCollection(list, fileName);
                        MessageBox.Show(@"操作成功！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loger.Error(ex);
#endif
            }
            finally
            {
                Application.RemoveMessageFilter(this);
                Cursor = Cursors.Default;
                btnExportData.Enabled = true;
            }
        }

        #endregion 查询统计

        #region 标签转换
        /// <summary>
        /// 标签转换-查询
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLabelSwitchingQuery_Click(object sender, EventArgs e)
        {
            LabelSwitchingQuery();
        }

        /// <summary>
        /// 标签转换-查询
        /// </summary>
        private void LabelSwitchingQuery()
        {
            lvwBook.Items.Clear();
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var uid = BaseTool.ConvertUid(txtUid.Text);
                    var itemName = txtInstrumentName.Text;
                    var itemType = txtInstrumentType.Text;
                    IQueryable<Item> query = db.Item;
                    if (!string.IsNullOrEmpty(uid))
                    {
                        query = query.Where(x => x.Uid.Contains(uid));
                    }
                    if (!string.IsNullOrEmpty(itemName))
                    {
                        query = query.Where(x => x.ItemName.Contains(itemName));
                    }
                    if (!string.IsNullOrEmpty(itemType))
                    {
                        query = query.Where(x => x.ItemType.Contains(itemType));
                    }
                    switch (cboLabelSwitchingQueryOrder.SelectedIndex)
                    {
                        case 0:
                            {
                                query = rdoLabelSwitchingQueryOrderAsc.Checked ? query.OrderBy(x => x.ItemName) : query.OrderByDescending(x => x.ItemName);
                            }
                            break;
                        case 1:
                            {
                                query = rdoLabelSwitchingQueryOrderAsc.Checked ? query.OrderBy(x => x.ItemType) : query.OrderByDescending(x => x.ItemType);
                            }
                            break;
                        case 2:
                            {
                                query = rdoLabelSwitchingQueryOrderAsc.Checked ? query.OrderBy(x => x.CreateTime) : query.OrderByDescending(x => x.CreateTime);
                            }
                            break;
                        case 3:
                            {
                                query = rdoLabelSwitchingQueryOrderAsc.Checked ? query.OrderBy(x => x.UpdateTime) : query.OrderByDescending(x => x.UpdateTime);
                            }
                            break;
                    }
                    var list = query.ToList();
                    for (var i = 0; i < list.Count; i++)
                    {
                        var entity = list[i];
                        var item = new ListViewItem
                        {
                            Tag = entity.Id,
                            Text = (i + 1).ToString()
                        };
                        item.SubItems.Add(entity.Uid);
                        item.SubItems.Add(entity.ItemName);
                        item.SubItems.Add(entity.ItemType);
                        item.SubItems.Add(entity.ItemLocation);
                        item.SubItems.Add(Convert.ToDateTime(entity.CreateTime).ToString("yyyy-MM-dd HH:mm:ss"));
                        var machineType = db.MachineType.FirstOrDefault(x => x.Id == entity.MachineId)?.TypeName;
                        item.SubItems.Add(machineType);
                        lvwBook.Items.Add(item);
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

        /// <summary>
        /// 标签转换-新增
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLabelSwitchingAdd_Click(object sender, EventArgs e)
        {
            var form = new FrmAddItem
            {
                StartPosition = FormStartPosition.CenterParent,
            };
            form.Success += Success;
            form.ShowDialog();
        }

        /// <summary>
        /// 标签转换-表格导入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLabelSwitchingImport_Click(object sender, EventArgs e)
        {
            try
            {
                Application.AddMessageFilter(this); //鼠标锁定
                Cursor = Cursors.WaitCursor;
                btnLabelSwitchingImport.Enabled = false;
                var fileDialog = new OpenFileDialog
                {
                    Multiselect = true,
                    Title = @"请选择文件",
                    //Filter = @"所有文件(*.*)|*.*"
                    Filter = @"Excel文件(*.xls;*.xlsx)|*.xls;*.xlsx"
                };
                if (fileDialog.ShowDialog() == DialogResult.OK)
                {
                    var file = fileDialog.FileName;
                    var dt = GetExcel(file);
                    ProgressBar prog;
                    Label label;
                    if (!prgLabelSwitching1.Visible)
                    {
                        prog = prgLabelSwitching1;
                        label = lblLabelSwitchingProgress1;
                    }
                    else
                    {
                        prog = prgLabelSwitching2;
                        label = lblLabelSwitchingProgress2;
                    }
                    LabelSwitchingImport(dt, prog, label);
                    btnLabelSwitchingQuery_Click(null, null);
                    MessageBox.Show(@"数据导入完成！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (OleDbException odex) when (odex.Message == "外部表不是预期的格式。")
            {
#if DEBUG
                throw;
#else               
                Loger.Error(odex);
                MessageBox.Show($@"{Resources.FailMessage}{odex.Message}", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loger.Error(ex);
#endif
            }
            finally
            {
                btnLabelSwitchingImport.Enabled = true;
                Application.RemoveMessageFilter(this);//鼠标解锁
                Cursor = Cursors.Default;
            }
        }

        /// <summary>
        /// 标签转换-表格导入
        /// </summary>
        /// <param name="dt">数据表</param>
        /// <param name="prog">用于显示的进度条</param>
        /// <param name="label">用于显示的进度条百分比</param>
        private void LabelSwitchingImport(DataTable dt, ProgressBar prog, Label label)
        {
            try
            {
                prog.Visible = true;
                prog.Maximum = dt.Rows.Count;
                using (var db = new MySqlDbContext())
                {
                    var tran = db.Database.BeginTransaction();
                    try
                    {
                        foreach (DataRow dr in dt.Rows)
                        {
                            var entity = new Item
                            {
                                Uid = BaseTool.ConvertUid(Convert.ToString(dr[0])),
                                ItemName = Convert.ToString(dr[1]),
                                ItemType = Convert.ToString(dr[2]),
                                ItemLocation = Convert.ToString(dr[3]),
                                ItemStateCode = 1001,
                                CreateTime = DateTime.Now,
                            };
                            var item = ItemDetailBatch.BatchAdd(entity);
                            try
                            {
                                db.Database.ExecuteSqlCommand(item.Key, item.Value.ToArray<object>());
                            }
                            catch (Exception ex)
                            {
                                Loger.Debug($"标签转换-表格导入错误：Tid={dr[0]}\r\nConvertTid={entity.Uid}", ex);
                                throw;
                            }
                            prog.Value++;
                            var percent = Convert.ToSingle(prog.Value) / Convert.ToSingle(prog.Maximum) * 100;
                            label.Text = $@"导入进度{percent:F2}%";
                            Application.DoEvents(); //必须加注这句代码，否则label将因为循环执行太快而来不及显示信息
                        }
                        tran.Commit();
                    }
                    catch (SqlException)
                    {
                        tran.Rollback();
                        throw;
                    }
                }
            }
            finally
            {
                prog.Visible = false;
                prog.Value = 0;
                label.Text = string.Empty;
            }
        }

        /// <summary>
        ///  标签转换-下载表格模板
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLabelSwitchingDownload_Click(object sender, EventArgs e)
        {
            btnLabelSwitchingDownload.Enabled = false;
            try
            {
                var dialog = new FolderBrowserDialog
                {
                    Description = @"请选择文件保存路径"
                };
                if (dialog.ShowDialog() == DialogResult.OK)
                {
                    var foldPath = dialog.SelectedPath;
                    var path = Path.GetFullPath(@"Resources/Files/ExcelImport/标签转换导入表格.xlsx");
                    var filename = Path.Combine(foldPath, Path.GetFileName(path));
                    ProgressBar prog;
                    Label label;
                    if (!prgLabelSwitching1.Visible)
                    {
                        prog = prgLabelSwitching1;
                        label = lblLabelSwitchingProgress1;
                    }
                    else
                    {
                        prog = prgLabelSwitching2;
                        label = lblLabelSwitchingProgress2;
                    }
                    DownloadFile(path, filename, prog, label);
                    MessageBox.Show(@"文件下载完成！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                Loger.Error(ex);
                var message = $"{Resources.FailMessage}执行回滚操作！";
                MessageBox.Show(message, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            finally
            {
                btnLabelSwitchingDownload.Enabled = true;
            }
        }

        /// <summary>
        /// 标签转换-修改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLabelSwitchingUpdate_Click(object sender, EventArgs e)
        {
            if (lvwBook.SelectedIndices.Count > 0)
            {
                var row = lvwBook.Items[lvwBook.SelectedIndices[0]];
                row.BackColor = Color.Gray;

                try
                {
                    using (var db = new MySqlDbContext())
                    {
                        var id = Convert.ToInt32(row.Tag);
                        var entity = db.Item.Single(x => x.Id == id);
                        var form = new FrmUpdateItem(entity)
                        {
                            StartPosition = FormStartPosition.CenterParent,
                        };
                        form.Success += Success;
                        form.ShowDialog();
                    }
                }
                catch (Exception ex)
                {
#if DEBUG
                    throw;
#else
                    Loger.Error(ex);
                    MessageBox.Show(Resources.OtherErrorMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
                }
                finally
                {
                    row.BackColor = SystemColors.InactiveBorder;
                }
            }
            else
            {
                MessageBox.Show(Resources.NoSelectedMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        /// <summary>
        /// 标签转换-删除
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnLabelSwitchingDelete_Click(object sender, EventArgs e)
        {

            if (lvwBook.SelectedIndices.Count > 0)
            {
                var row = lvwBook.Items[lvwBook.SelectedIndices[0]];
                var selectedBackColor = row.BackColor;
                row.BackColor = Color.Gray;
                if (MessageBox.Show(Resources.RiskOperationConfimMessage, "", MessageBoxButtons.OKCancel) == DialogResult.OK)
                {
                    try
                    {
                        using (var db = new MySqlDbContext())
                        {
                            var id = Convert.ToInt32(row.Tag);
                            var entity = db.Item.Single(x => x.Id == id);
                            db.Item.Remove(entity);
                            db.SaveChanges();
                        }
                        MessageBox.Show(Resources.SuccecssMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LabelSwitchingQuery();
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
                else
                {
                    row.BackColor = selectedBackColor;
                }
            }
            else
            {
                MessageBox.Show(Resources.NoSelectedMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnMachineTypeAdd_Click(object sender, EventArgs e)
        {
            var form = new FrmAddMachineType
            {
                StartPosition = FormStartPosition.CenterParent,
            };
            form.Success += Success;
            form.ShowDialog();
        }


        #endregion 标签转换

        #region 开证办卡
        /// <summary>
        /// 开证办卡-新增
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUserAdd_Click(object sender, EventArgs e)
        {
            var form = new FrmAddUser
            {
                StartPosition = FormStartPosition.CenterParent,
            };
            form.Success += Success;
            form.ShowDialog();
        }

        /// <summary>
        /// 开证办卡-表格导入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUserImport_Click(object sender, EventArgs e)
        {
            try
            {
                Application.AddMessageFilter(this); //鼠标锁定
                Cursor = Cursors.WaitCursor;
                btnUserImport.Enabled = false;
                var fileDialog = new OpenFileDialog
                {
                    Multiselect = true,
                    Title = @"请选择文件",
                    //Filter = @"所有文件(*.*)|*.*"
                    Filter = @"Excel文件(*.xls;*.xlsx)|*.xls;*.xlsx"
                };
                if (fileDialog.ShowDialog() == DialogResult.OK)
                {
                    var file = fileDialog.FileName;
                    var dt = GetExcel(file);
                    ProgressBar prog;
                    Label label;
                    if (!prgUser1.Visible)
                    {
                        prog = prgUser1;
                        label = lblUserProgress1;
                    }
                    else
                    {
                        prog = prgUser2;
                        label = lblUserProgress2;
                    }
                    UserImport(dt, prog, label);
                    btnUserQuery_Click(null, null);
                    MessageBox.Show(@"数据导入完成！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (OleDbException odex) when (odex.Message == "外部表不是预期的格式。")
            {
#if DEBUG
                throw;
#else
                Loger.Error(odex);
                MessageBox.Show($@"{Resources.FailMessage}{odex.Message}", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            catch (Exception ex)
            {

#if DEBUG
                throw;
#else
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loger.Error(ex);
#endif
            }
            finally
            {
                btnUserImport.Enabled = true;
                Application.RemoveMessageFilter(this);//鼠标解锁
                Cursor = Cursors.Default;
            }
        }

        /// <summary>
        /// 开证办卡-表格导入
        /// </summary>
        /// <param name="dt">数据表</param>
        /// <param name="prog">用于显示的进度条</param>
        /// <param name="label">用于显示的进度条百分比</param>
        private void UserImport(DataTable dt, ProgressBar prog, Label label)
        {
            try
            {
                prog.Visible = true;
                prog.Maximum = dt.Rows.Count;
                using (var db = new MySqlDbContext())
                {
                    var tran = db.Database.BeginTransaction();
                    try
                    {
                        foreach (DataRow dr in dt.Rows)
                        {
                            var entity = new Student
                            {
                                CardMacCode = BaseTool.ConvertTid(Convert.ToString(dr[0])),
                                StudentCode = Convert.ToString(dr[1]),
                                StudentName = Convert.ToString(dr[2]),
                                GradeName = Convert.ToString(dr[3]),
                                ClassName = Convert.ToString(dr[4]),
                                CreateTime = DateTime.Now
                            };
                            var item = ItemDetailBatch.BatchAdd(entity);
                            try
                            {
                                db.Database.ExecuteSqlCommand(item.Key, item.Value.ToArray<object>());
                            }
                            catch (Exception ex)
                            {
                                Loger.Debug($"开证办卡-表格导入：Tid={Convert.ToString(dr[0])}\r\nConvertTid={entity.CardMacCode}", ex);
                                throw;
                            }
                            prog.Value++;
                            var percent = Convert.ToSingle(prog.Value) / Convert.ToSingle(prog.Maximum) * 100;
                            label.Text = $@"导入进度{percent:F2}%";
                            Application.DoEvents(); //必须加注这句代码，否则label将因为循环执行太快而来不及显示信息
                        }
                        tran.Commit();
                    }
                    catch (SqlException)
                    {
                        tran.Rollback();
                        throw;
                    }
                }
            }
            finally
            {
                prog.Visible = false;
                prog.Value = 0;
                label.Text = string.Empty;
            }
        }

        /// <summary>
        /// 开证办卡-下载表格模板
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUserDownload_Click(object sender, EventArgs e)
        {
            btnUserDownload.Enabled = false;
            try
            {
                var dialog = new FolderBrowserDialog
                {
                    Description = @"请选择文件保存路径"
                };
                if (dialog.ShowDialog() == DialogResult.OK)
                {
                    var foldPath = dialog.SelectedPath;
                    var path = Path.GetFullPath(@"Resources/Files/ExcelImport/学生信息导入表格.xlsx");
                    var filename = Path.Combine(foldPath, Path.GetFileName(path));
                    ProgressBar prog;
                    Label label;
                    if (!prgUser1.Visible)
                    {
                        prog = prgUser1;
                        label = lblUserProgress1;
                    }
                    else
                    {
                        prog = prgUser2;
                        label = lblUserProgress2;
                    }
                    DownloadFile(path, filename, prog, label);
                    MessageBox.Show(@"文件下载完成！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                Loger.Error(ex);
                var message = $"{Resources.FailMessage}执行回滚操作！";
                MessageBox.Show(message, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            finally
            {
                btnUserDownload.Enabled = true;
            }
        }

        /// <summary>
        /// 开证办卡-修改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUserUpdate_Click(object sender, EventArgs e)
        {
            if (lvwUser.SelectedIndices.Count > 0)
            {
                var row = lvwUser.Items[lvwUser.SelectedIndices[0]];
                row.BackColor = Color.Gray;
                try
                {
                    var entity = new Student
                    {
                        Id = Convert.ToInt32(row.Tag),
                        CardMacCode = row.SubItems[1].Text,
                        StudentCode = row.SubItems[2].Text,
                        StudentName = row.SubItems[3].Text,
                        GradeName = row.SubItems[4].Text,
                        ClassName = row.SubItems[5].Text
                    };
                    var form = new FrmUpdateUser(entity)
                    {
                        StartPosition = FormStartPosition.CenterParent,
                    };
                    form.Success += Success;
                    form.ShowDialog();
                }
                catch (Exception ex)
                {
#if DEBUG
                    throw;
#else
                    Loger.Error(ex);
                    MessageBox.Show(Resources.OtherErrorMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
                }
                finally
                {
                    row.BackColor = SystemColors.InactiveBorder;
                }
            }
            else
            {
                MessageBox.Show(Resources.NoSelectedMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        /// <summary>
        /// 开证办卡-删除
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUserDelete_Click(object sender, EventArgs e)
        {
            if (lvwUser.SelectedIndices.Count > 0)
            {
                var row = lvwUser.Items[lvwUser.SelectedIndices[0]];
                var selectedBackColor = row.BackColor;
                row.BackColor = Color.Gray;
                if (MessageBox.Show(Resources.RiskOperationConfimMessage, "", MessageBoxButtons.OKCancel) == DialogResult.OK)
                {
                    try
                    {
                        using (var db = new MySqlDbContext())
                        {
                            var id = Convert.ToInt32(row.Tag);
                            var entity = db.Student.Single(x => x.Id == id);
                            db.Student.Remove(entity);
                            db.SaveChanges();
                        }
                        MessageBox.Show(Resources.SuccecssMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        MakingCardInIt();
                        StudentQuery();
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
                else
                {
                    row.BackColor = selectedBackColor;
                }
            }
            else
            {
                MessageBox.Show(Resources.NoSelectedMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        /// <summary>
        /// 开证办卡-查询
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUserQuery_Click(object sender, EventArgs e)
        {
            StudentQuery();
        }

        /// <summary>
        /// 学生查询
        /// </summary>
        private void StudentQuery()
        {
            lvwUser.Items.Clear();
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var studentName = txtUserName.Text;
                    var cardMacCode = txtUserCardCode.Text;
                    var studentCode = txtUserStudentCode.Text;
                    var gradeName = cmbGradeName.Text;
                    var className = cmbClassName.Text;
                    IQueryable<Student> query = db.Student;
                    if (!string.IsNullOrEmpty(studentName))
                    {
                        query = query.Where(x => x.StudentName.Contains(studentName));
                    }
                    if (!string.IsNullOrEmpty(cardMacCode))
                    {
                        query = query.Where(x => x.CardMacCode.Contains(cardMacCode));
                    }
                    if (!string.IsNullOrEmpty(studentCode))
                    {
                        query = query.Where(x => x.StudentCode.Contains(studentCode));
                    }
                    if (gradeName != "ALL")
                    {
                        query = query.Where(x => x.GradeName.Equals(gradeName));
                    }
                    if (className != "ALL")
                    {
                        query = query.Where(x => x.ClassName.Equals(className));
                    }
                    switch (cboUserQueryOrder.SelectedIndex)
                    {
                        case 0:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.StudentName) : query.OrderByDescending(x => x.StudentName);
                            }
                            break;
                        case 1:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.CardMacCode) : query.OrderByDescending(x => x.CardMacCode);
                            }
                            break;
                        case 2:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.StudentCode) : query.OrderByDescending(x => x.StudentCode);
                            }
                            break;
                        case 3:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.GradeName) : query.OrderByDescending(x => x.GradeName);
                            }
                            break;
                        case 4:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.ClassName) : query.OrderByDescending(x => x.ClassName);
                            }
                            break;
                        case 5:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.CreateTime) : query.OrderByDescending(x => x.CreateTime);
                            }
                            break;
                        case 6:
                            {
                                query = rdoUserQueryOrderAsc.Checked ? query.OrderBy(x => x.UpdateTime) : query.OrderByDescending(x => x.UpdateTime);
                            }
                            break;
                    }
                    var list = query.ToList();
                    for (var i = 0; i < list.Count; i++)
                    {
                        var entity = list[i];
                        var item = new ListViewItem
                        {
                            Tag = entity.Id,
                            Text = (i + 1).ToString()
                        };
                        item.SubItems.Add(entity.CardMacCode);
                        item.SubItems.Add(entity.StudentCode);
                        item.SubItems.Add(entity.StudentName);
                        item.SubItems.Add(entity.GradeName);
                        item.SubItems.Add(entity.ClassName);
                        item.SubItems.Add(Convert.ToDateTime(entity.CreateTime).ToString("yyyy-MM-dd HH:mm:ss"));
                        item.SubItems.Add(Convert.ToDateTime(entity.UpdateTime).ToString("yyyy-MM-dd HH:mm:ss"));
                        lvwUser.Items.Add(item);
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

        #endregion 开证办卡

        /// <summary>
        /// 加载Excel
        /// </summary>
        /// <param name="filePos">文件路径</param>
        /// <returns>数据表</returns>
        public static DataTable GetExcel(string filePos)
        {
            var connstr = "Provider=Microsoft.ACE.OLEDB.12.0 ;Data Source=" + filePos + ";Extended Properties='Excel 12.0;HDR=Yes;IMEX=1'";
            //未在本地计算机上注册"Microsoft.ACE.OLEDB.12.0"  下载安装在  http://download.microsoft.com/download/7/0/3/703ffbcb-dc0c-4e19-b0da-1463960fdcdb/AccessDatabaseEngine.exe
            var ds = new DataSet();
            string tableName;
            using (var connection = new OleDbConnection(connstr))
            {
                connection.Open();
                var table = connection.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                tableName = table?.Rows[0]["Table_Name"].ToString();
                var strExcel = "select * from " + "[" + tableName + "]";
                var adapter = new OleDbDataAdapter(strExcel, connstr);
                adapter.Fill(ds, tableName);
                connection.Close();
            }
            return ds.Tables[tableName];
        }

        /// <summary>        
        /// 下载文件        
        /// </summary>        
        /// <param name="path">下载文件地址</param>       
        /// <param name="filename">下载后的存放地址</param>        
        /// <param name="prog">用于显示的进度条</param>        
        /// <param name="label">用于显示的进度条百分比</param> 
        private void DownloadFile(string path, string filename, ProgressBar prog, Label label)
        {
            try
            {
                var request = (FileWebRequest)WebRequest.Create(path);
                var response = (FileWebResponse)request.GetResponse();
                var totalBytes = response.ContentLength;
                if (totalBytes > int.MaxValue)
                {
                    MessageBox.Show(@"下载文件大小超过限制");
                    return;
                }
                if (prog != null)
                {
                    prog.Visible = true;
                    prog.Maximum = (int)totalBytes;
                }
                var st = response.GetResponseStream();
                var so = new FileStream(filename, FileMode.Create);
                long totalDownloadedByte = 0;
                var by = new byte[1024];
                if (st != null)
                {
                    var osize = st.Read(by, 0, by.Length);
                    while (osize > 0)
                    {
                        totalDownloadedByte = osize + totalDownloadedByte;
                        Application.DoEvents();
                        so.Write(by, 0, osize);
                        if (prog != null)
                        {
                            prog.Value = (int)totalDownloadedByte;
                        }
                        osize = st.Read(by, 0, by.Length);
                        var percent = Convert.ToSingle(totalDownloadedByte) / Convert.ToSingle(totalBytes) * 100;
                        label.Text = $@"下载进度{percent:F2}%";
                        Application.DoEvents(); //必须加注这句代码，否则label将因为循环执行太快而来不及显示信息
                    }
                }
                so.Close();
                st?.Close();
            }
            finally
            {
                if (prog != null)
                {
                    prog.Visible = false;
                    prog.Value = 0;
                }
                label.Text = string.Empty;
            }
        }

        public bool PreFilterMessage(ref System.Windows.Forms.Message m)
        {
            if (m.Msg >= 513 && m.Msg <= 515)
            {
                return true;
            }
            return false;
        }

        private void btnImportCirculation_Click(object sender, EventArgs e)
        {
            try
            {
                if (lvwCirculation.Items.Count > 0)
                {
                    ExportExcel.OutToExcelFromDataListView(ConfigurationManager.AppSettings["ExcelImport"], lvwCirculation, true);
                }
                else
                {
                    MessageBox.Show(@"没有数据！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
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

        private void cmbGradeName_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbClassName.Items.Clear();
            cmbClassName.Items.Add("ALL");
            cmbClassName.SelectedIndex = 0;
            try
            {
                using (var db = new MySqlDbContext())
                {
                    var gradeName = cmbGradeName.Text;
                    var query = gradeName == "ALL" ? db.Student : db.Student.Where(x => x.GradeName == gradeName);
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

        /// <summary>
        /// 选项卡切换事件
        /// </summary>
        private void tabMain_Selecting(object sender, TabControlCancelEventArgs e)
        {
            if (e.TabPage == pageIndex)
            {
                IndexInit();
            }
            if (e.TabPage != pageHelp) { return; }
            e.Cancel = true;
            try
            {
                var helpfile = Path.GetFullPath(@"Resources/Files/上海市实验学校仪器设备管理系统使用说明.chm");
                Help.ShowHelp(this, helpfile);
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

        #region 更多功能

        /// <summary>
        /// 更多功能-追加借还记录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAppendCirculationRecord_Click(object sender, EventArgs e)
        {
            try
            {
                var title = ConfigurationManager.AppSettings["ExcelImportForCirculationRecord"];
                Application.AddMessageFilter(this); //鼠标锁定
                Cursor = Cursors.WaitCursor;
                btnAppendCirculationRecord.Enabled = false;
                var fileDialog = new OpenFileDialog
                {
                    Multiselect = true,
                    Title = @"请选择文件",
                    Filter = @"(*.xlsx)|*.xlsx"
                };
                if (fileDialog.ShowDialog() == DialogResult.OK)
                {
                    var fileName = fileDialog.FileName;
                    var data = EPPlusHelper.GetDataTableFromExcel(fileName).ConvertDataTable<CirculationRecord>();
                    using (var db = new MySqlDbContext())
                    {
                        var lastActionTime = db.CirculationRecord.Max(x => x.ActionTime) ?? DateTime.MinValue;
                        var newData = data.Where(x => x.ActionTime > lastActionTime);
                        db.CirculationRecord.AddRange(newData);
                        db.SaveChanges();
                    }
                    MessageBox.Show(@"追加借还记录完成！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (OleDbException odex) when (odex.Message == "外部表不是预期的格式。")
            {
#if DEBUG
                throw;
#else
                Loger.Error(odex);
                MessageBox.Show($@"{Resources.FailMessage}{odex.Message}", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loger.Error(ex);
#endif
            }
            finally
            {
                Application.RemoveMessageFilter(this);
                Cursor = Cursors.Default;
                btnAppendCirculationRecord.Enabled = true;
            }
        }

        /// <summary>
        /// 图书ATM数据导入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnImportBookATMCirculationRecord_Click(object sender, EventArgs e)
        {
            try
            {
                Application.AddMessageFilter(this); //鼠标锁定
                Cursor = Cursors.WaitCursor;
                btnImportBookATMCirculationRecord.Enabled = false;
                var fileDialog = new OpenFileDialog
                {
                    Multiselect = true,
                    Title = @"请选择文件",
                    Filter = @"Excel文件(*.xls;*.xlsx)|*.xls;*.xlsx"
                };
                if (fileDialog.ShowDialog() == DialogResult.OK)
                {
                    var file = fileDialog.FileName;
                    var dt = GetExcel(file);
                    MessageBox.Show(@"数据加载完成！写入功能尚未实现...", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    MessageBox.Show(@"数据导入完成！", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (OleDbException odex) when (odex.Message == "外部表不是预期的格式。")
            {
#if DEBUG
                throw;
#else
                Loger.Error(odex);
                MessageBox.Show($@"{Resources.FailMessage}{odex.Message}", @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
#endif
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loger.Error(ex);
#endif
            }
            finally
            {
                btnImportBookATMCirculationRecord.Enabled = true;
                Application.RemoveMessageFilter(this);
                Cursor = Cursors.Default;
            }
        }

        #endregion 更多功能

        #region Private methods

        private ReportViewModel GenerateReport()
        {
            try
            {
                var report = new ReportViewModel();
                using (var db = new MySqlDbContext())
                {
                    var loanActionList = db.Action.Where(x => x.ActionName.Contains("借出")).Select(x => x.Id).ToList();
                    var returnActionList = db.Action.Where(x => x.ActionName.Contains("归还")).Select(x => x.Id).ToList();
                    var loanList = db.CirculationRecord.Where(x => loanActionList.Contains(x.ActionId)).ToList();
                    var returnList = db.CirculationRecord.Where(x => returnActionList.Contains(x.ActionId)).ToList();

                    report.MachineCount = db.Item.Count();
                    report.ServiceCount = loanList.LongCount().ToString();
                    report.LoanPersonCount = loanList.GroupBy(x => x.StudentCardMacCode).LongCount().ToString();
                    report.ServiceTime = db.CirculationRecord.Any() ? (db.CirculationRecord.Max(x => x.ActionTime) - db.CirculationRecord.Min(x => x.ActionTime)).Value.Days.ToString() : 0.ToString();
                    report.GoodMachinePercentage = ConfigurationManager.AppSettings["GoodMachinePercentage"];

                    var itemList = db.Item.Where(x => x.MachineId != null).ToList();
                    var index = 0;
                    var itemGroups = itemList.GroupBy(x => x.MachineId).OrderByDescending(x => x.Count()).ToList();
                    foreach (var group in itemGroups)
                    {
                        if (++index > 2)
                        {
                            var itemUidList = itemGroups.Skip(2).SelectMany(x => x.Select(y => y.Uid)).ToList();
                            report.OtherMachineCount = itemUidList.Count();
                            report.OtherLoanCount = loanList.LongCount(x => itemUidList.Contains(x.ItemUid));
                            report.OtherReturnCount = returnList.LongCount(x => itemUidList.Contains(x.ItemUid));
                            break;
                        }
                        else
                        {
                            var itemUidList = group.Select(x => x.Uid).ToList();
                            var item = group.First();
                            var machine = db.MachineType.First(x => x.Id == item.MachineId);
                            switch (index)
                            {
                                case 1:
                                    {
                                        report.Machine1Name = machine.TypeName;
                                        report.Machine1Count = itemUidList.Count();
                                        report.Machine1LoanCount = loanList.LongCount(x => itemUidList.Contains(x.ItemUid));
                                        report.Machine1ReturnCount = returnList.LongCount(x => itemUidList.Contains(x.ItemUid));

                                        break;
                                    }
                                case 2:
                                    {
                                        report.Machine2Name = machine.TypeName;
                                        report.Machine2Count = itemUidList.Count();
                                        report.Machine2LoanCount = loanList.LongCount(x => itemUidList.Contains(x.ItemUid));
                                        report.Machine2ReturnCount = returnList.LongCount(x => itemUidList.Contains(x.ItemUid));
                                        break;
                                    }
                            }
                        }
                    }

                }

                return report;
            }
            catch (Exception ex)
            {
#if DEBUG
                throw;
#else
                Loger.Error(ex);
                MessageBox.Show(Resources.FailMessage, @"提示", MessageBoxButtons.OK, MessageBoxIcon.Information);

                return null;
#endif
            }
        }

        private void IndexInit()
        {
            var report = GenerateReport();
            lblMachineCount.Text = $"{report.MachineCount}";
            lblServiceCount.Text = report.ServiceCount;
            lblLoanPersonCount.Text = report.LoanPersonCount;
            lblServiceTime.Text = $"{report.ServiceTime}（天）";
            lblGoodMachinePercentage.Text = $"{report.GoodMachinePercentage}%";
            if (!string.IsNullOrWhiteSpace(report.Machine1Name))
            {
                label11.Text = $"{report.Machine1Name}：";
                label32.Text = $"{report.Machine1Name}：";
                label40.Text = $"{report.Machine1Name}：";
            }
            if (!string.IsNullOrWhiteSpace(report.Machine2Name))
            {
                label12.Text = $"{report.Machine2Name}：";
                label31.Text = $"{report.Machine2Name}：";
                label39.Text = $"{report.Machine2Name}：";
            }
            lblMachine1Count.Text = $"{report.Machine1Count}";
            lblMachine2Count.Text = $"{report.Machine2Count}";
            lblMachine3Count.Text = $"{report.OtherMachineCount}";
            lblMachineLoanCount.Text = $"{report.Machine1LoanCount + report.Machine2LoanCount + report.OtherLoanCount}";
            lblMachineReturnCount.Text = $"{report.Machine1ReturnCount + report.Machine2ReturnCount + report.OtherReturnCount}";
            lblMachine1LoanCount.Text = report.Machine1LoanCount.ToString();
            lblMachine1ReturnCount.Text = report.Machine1ReturnCount.ToString();
            lblMachine2LoanCount.Text = report.Machine2LoanCount.ToString();
            lblMachine2ReturnCount.Text = report.Machine2ReturnCount.ToString();
            lblMachine3LoanCount.Text = report.OtherLoanCount.ToString();
            lblMachine3ReturnCount.Text = report.OtherReturnCount.ToString();
        }

        #endregion

    }
}
