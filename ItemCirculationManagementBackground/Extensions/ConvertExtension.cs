using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemCirculationManagementBackground.Extensions
{
    public static class ConvertExtension
    {
        /// <summary>  
        /// List集合转DataTable  
        /// </summary>  
        /// <typeparam name="T">实体类型</typeparam>  
        /// <param name="list">传入集合</param>  
        /// <param name="isStoreDB">是否存入数据库DateTime字段，date时间范围没事，取出展示不用设置TRUE</param>  
        /// <returns>返回datatable结果</returns>  
        public static DataTable ToDataTable<T>(this List<T> list, bool isStoreDB = true)
        {
            var proInfos = typeof(T).GetProperties();
            var dt = new DataTable();
            foreach (var item in proInfos)
            {
                dt.Columns.Add(item.Name, item.PropertyType);
            }
            foreach (var item in list)
            {
                DataRow dr = dt.NewRow();
                foreach (var proInfo in proInfos)
                {
                    object obj = proInfo.GetValue(item);
                    if (obj == null)
                    {
                        continue;
                    }
                    if (isStoreDB && proInfo.PropertyType == typeof(DateTime) && Convert.ToDateTime(obj) < Convert.ToDateTime("1753-01-01"))
                    {
                        continue;
                    }
                    dr[proInfo.Name] = obj;
                }
                dt.Rows.Add(dr);
            }
            return dt;
        }
    }
}
