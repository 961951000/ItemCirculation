using System;
using System.Collections.Generic;
using System.Data;
using System.Reflection;

namespace ItemCirculationManagementBackground.Util.Extensions
{
    public static class DataTableExtensions
    {
        public static List<T> ConvertDataTable<T>(this DataTable dt)
        {
            List<T> data = new List<T>();
            foreach (DataRow row in dt.Rows)
            {
                T item = GetItem<T>(row);
                data.Add(item);
            }
            return data;
        }

        private static T GetItem<T>(DataRow dr)
        {
            Type temp = typeof(T);
            T obj = Activator.CreateInstance<T>();

            foreach (DataColumn column in dr.Table.Columns)
            {
                foreach (PropertyInfo property in temp.GetProperties())
                {
                    if (property.Name == column.ColumnName)
                    {
                        var value = dr[column.ColumnName];
                        if (!property.PropertyType.IsGenericType)
                        {
                            property.SetValue(obj, Convert.ChangeType(value, property.PropertyType), null);
                        }
                        else
                        {
                            Type genericTypeDefinition = property.PropertyType.GetGenericTypeDefinition();
                            if (genericTypeDefinition == typeof(Nullable<>))
                            {
                                property.SetValue(obj, Convert.ChangeType(value, Nullable.GetUnderlyingType(property.PropertyType)), null);
                            }
                        }
                    }
                    else
                    {
                        continue;
                    }
                }
            }

            return obj;
        }
    }
}
