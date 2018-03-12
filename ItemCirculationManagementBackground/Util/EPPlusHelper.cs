using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using OfficeOpenXml;
using System.Reflection;
using OfficeOpenXml.Style;

namespace ItemCirculationManagementBackground.Util
{
    public class EPPlusHelper
    {
        public static void ExportByDataTable(DataTable sourceTable, string path)
        {
            using (ExcelPackage package = new ExcelPackage(new FileInfo(path)))
            {
                var sheetName = string.IsNullOrEmpty(sourceTable.TableName) ? "Sheet1" : sourceTable.TableName;
                var sheet = package.Workbook.Worksheets.Add(sheetName);
                sheet.Cells["A1"].LoadFromDataTable(sourceTable, true);
                package.Save();
            }
        }

        public static void ExportByCollection<T>(IEnumerable<T> sourceCollection, string path, string sheetName = "Sheet1")
        {
            using (ExcelPackage package = new ExcelPackage(new FileInfo(path)))
            {
                var sheet = package.Workbook.Worksheets.Add(sheetName);

                sheet.Column(5).Style.Numberformat.Format = "yyyy-MM-dd HH:mm:ss";
                sheet.Cells["A1"].LoadFromCollection(sourceCollection, true);

                PropertyInfo[] properties = typeof(T).GetProperties();
                int colNumber = 1;
                foreach (PropertyInfo property in typeof(T).GetProperties())
                {
                    if (property.PropertyType.IsGenericType)
                    {
                        Type genericTypeDefinition = property.PropertyType.GetGenericTypeDefinition();
                        if (genericTypeDefinition == typeof(DateTime?))
                        {
                            sheet.Column(colNumber).Style.Numberformat.Format = "yyyy-MM-dd HH:mm:ss";
                        }
                    }
                    else if (property.PropertyType == typeof(DateTime))
                    {
                        sheet.Column(colNumber).Style.Numberformat.Format = "yyyy-MM-dd HH:mm:ss";
                    }

                    colNumber++;
                }

                sheet.Row(1).Style.Font.Bold = true;
                sheet.Cells[sheet.Dimension.Address].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
                sheet.Cells[sheet.Dimension.Address].Style.Font.Name = "微软雅黑";
                sheet.Cells[sheet.Dimension.Address].AutoFitColumns();

                package.Save();
            }
        }

        public static DataTable GetDataTableFromExcel(string path, bool hasHeader = true)
        {
            using (var package = new ExcelPackage())
            {
                using (var stream = File.OpenRead(path))
                {
                    package.Load(stream);
                }
                var sheet = package.Workbook.Worksheets.First();
                var table = new DataTable();
                foreach (var firstRowCell in sheet.Cells[1, 1, 1, sheet.Dimension.End.Column])
                {
                    table.Columns.Add(hasHeader ? firstRowCell.Text : string.Format("Column {0}", firstRowCell.Start.Column));
                }
                var startRow = hasHeader ? 2 : 1;
                for (int rowNum = startRow; rowNum <= sheet.Dimension.End.Row; rowNum++)
                {
                    var sheetRow = sheet.Cells[rowNum, 1, rowNum, sheet.Dimension.End.Column];
                    var row = table.Rows.Add();
                    foreach (var cell in sheetRow)
                    {
                        row[cell.Start.Column - 1] = cell.Text;
                    }
                }

                return table;
            }
        }
    }
}
