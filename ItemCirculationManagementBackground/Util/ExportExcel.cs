using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using Microsoft.Office.Interop.Excel;

namespace ItemCirculationManagementBackground.Util
{
    public class ExportExcel
    {
        public static bool OutToExcelFromDataListView(string title, ListView listView, bool isShowExcel)
        {
            var rowNum = listView.Items.Count;
            var columnNum = listView.Items[0].SubItems.Count;
            var rowIndex = 1;
            var columnIndex = 0;
            if (rowNum == 0)
            {
                return false;
            }
            /*保存对话框*/
            var sfd = new SaveFileDialog
            {
                Filter = @"导出Excel(*.xls)|*.xls|导出Excel(*.xlsx)|*.xlsx",
                FileName = title + DateTime.Now.ToString("yyyyMMddhhmmss")
            };
            if (sfd.ShowDialog() == DialogResult.OK)
            {
                var fileName = sfd.FileName;
                var xlApp = new Microsoft.Office.Interop.Excel.Application
                {
                    DefaultFilePath = string.Empty,
                    DisplayAlerts = false,
                    SheetsInNewWorkbook = 1,
                    Visible = isShowExcel
                };
                try
                {
                    var xlBook = xlApp.Workbooks.Add(true);
                    //将ListView的列名导入Excel表第一行
                    foreach (ColumnHeader dc in listView.Columns)
                    {
                        columnIndex++;
                        xlApp.Cells[rowIndex, columnIndex] = dc.Text;
                    }
                    //将ListView中的数据导入Excel中
                    for (var i = 0; i < rowNum; i++)
                    {
                        rowIndex++;
                        columnIndex = 0;
                        for (var j = 0; j < columnNum; j++)
                        {
                            columnIndex++;
                            //注意这个在导出的时候加了“\t” 的目的就是避免导出的数据显示为科学计数法。可以放在每行的首尾。
                            xlApp.Cells[rowIndex, columnIndex] = Convert.ToString(listView.Items[i].SubItems[j].Text) + "\t";
                        }
                    }
                    //例外需要说明的是用strFileName,Excel.XlFileFormat.xlExcel9795保存方式时 当你的Excel版本不是95、97 而是2003、2007 时导出的时候会报一个错误：异常来自 HRESULT:0x800A03EC。 解决办法就是换成strFileName, Microsoft.Office.Interop.Excel.XlFileFormat.xlWorkbookNormal。
                    switch (Path.GetExtension(fileName))
                    {
                        case ".xls":
                            {
                                xlBook.SaveAs(fileName, XlFileFormat.xlExcel8, Type.Missing, Type.Missing, Type.Missing, Type.Missing, XlSaveAsAccessMode.xlExclusive, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
                            }
                            break;
                        case ".xlsx":
                            {
                                xlBook.SaveAs(fileName, XlFileFormat.xlOpenXMLWorkbook, Type.Missing, Type.Missing, Type.Missing, Type.Missing, XlSaveAsAccessMode.xlExclusive, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
                            }
                            break;
                        default:
                            {
                                xlBook.SaveAs(fileName, XlFileFormat.xlWorkbookNormal, Type.Missing, Type.Missing, Type.Missing, Type.Missing, XlSaveAsAccessMode.xlExclusive, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
                            }
                            break;
                    }

                    xlApp = null;
                    xlBook = null;
                    return true;
                }
                finally
                {
                    xlApp?.Quit();
                    xlApp = null;
                    GC.Collect();
                    KillProcess("Excel");
                }
            }
            return false;
        }

        public static bool OutToExcelFromDataGridView(string title, DataGridView dgv, bool isShowExcel)
        {
            var titleColumnSpan = 0;//标题的跨列数
            if (dgv.Rows.Count == 0)
            {
                return false;
            }
            /*保存对话框*/
            var sfd = new SaveFileDialog
            {
                Filter = @"导出Excel(*.xls)|*.xls|导出Excel(*.xlsx)|*.xlsx",
                FileName = title + DateTime.Now.ToString("yyyyMMddhhmmss")
            };

            if (sfd.ShowDialog() == DialogResult.OK && (!File.Exists(sfd.FileName) || MessageBox.Show(@"目标包含同名文件，是否替换？", @"替换文件", MessageBoxButtons.OKCancel) == DialogResult.OK))
            {
                var fileName = sfd.FileName;//保存的excel文件名
                /*建立Excel对象*/
                var excel = new Microsoft.Office.Interop.Excel.Application();
                try
                {
                    excel.Application.Workbooks.Add(true);
                    excel.Visible = isShowExcel;
                    /*分析标题的跨列数*/
                    titleColumnSpan += dgv.Columns.Cast<DataGridViewColumn>().Count(column => column.Visible);
                    /*合并标题单元格*/
                    var worksheet = (Worksheet)excel.ActiveSheet;
                    //worksheet.get_Range("A1", "C10").Merge();            
                    worksheet.Range[worksheet.Cells[1, 1] as Range, worksheet.Cells[1, titleColumnSpan] as Range].Merge();
                    /*生成标题*/
                    excel.Cells[1, 1] = title;
                    excel.Cells[1, 1].HorizontalAlignment = XlHAlign.xlHAlignCenter;//标题居中
                    var columnIndex = 1;//列索引
                    for (var i = 0; i < dgv.ColumnCount; i++)
                    {
                        if (dgv.Columns[i].Visible)
                        {
                            excel.Cells[2, columnIndex] = dgv.Columns[i].HeaderText;
                            excel.Cells[2, columnIndex].HorizontalAlignment = XlHAlign.xlHAlignCenter;//字段居中
                            columnIndex++;
                        }
                    }
                    //填充数据              
                    for (var i = 0; i < dgv.RowCount; i++)
                    {
                        columnIndex = 1;
                        for (var j = 0; j < dgv.ColumnCount; j++)
                        {
                            if (dgv.Columns[j].Visible)
                            {
                                if (dgv[j, i].ValueType == typeof(string))
                                {
                                    excel.Cells[i + 3, columnIndex] = "'" + dgv[j, i].Value;
                                }
                                else
                                {
                                    excel.Cells[i + 3, columnIndex] = dgv[j, i].Value.ToString();
                                }
                                excel.Cells[i + 3, columnIndex].HorizontalAlignment = XlHAlign.xlHAlignLeft;//字段居中
                                columnIndex++;
                            }
                        }
                    }
                    worksheet.SaveAs(fileName, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
                    return true;
                }
                finally
                {
                    excel.Quit();
                    excel = null;
                    GC.Collect();
                    KillProcess("Excel");
                }
            }
            return false;
        }
        private static void KillProcess(string processName)//杀死与Excel相关的进程
        {
            var process = new Process();//得到所有打开的进程
            try
            {
                foreach (var thisproc in Process.GetProcessesByName(processName))
                {
                    if (!thisproc.CloseMainWindow())
                    {
                        thisproc.Kill();
                    }
                }
            }
            catch (Exception exc)
            {
                throw new Exception("", exc);
            }
        }
    }
}
