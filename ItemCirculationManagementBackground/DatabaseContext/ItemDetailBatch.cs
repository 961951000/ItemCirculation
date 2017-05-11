using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using LibraryManagementBackground.Models;

namespace ItemCirculationManagementBackground.DatabaseContext
{
    public class ItemDetailBatch
    {
        public static KeyValuePair<string, IEnumerable<DbParameter>> BatchAdd(ItemDetails entity)
        {
            var type = entity.GetType();
            var finfos = type.GetProperties();
            var tableName = type.Name;
            foreach (var finfo in type.GetCustomAttributes(true).OfType<TableAttribute>())//获得表名
            {
                tableName = finfo.Name;
            }
            var param = new List<DbParameter>();
            var sb = new StringBuilder();
            var sbNames = new StringBuilder();
            var sbValues = new StringBuilder();
            foreach (var item in finfos)
            {
                var name = item.Name;
                var value = type.GetProperty(name)?.GetValue(entity, null);
                if (value != null)
                {
                    value = Convert.ChangeType(value, Nullable.GetUnderlyingType(item.PropertyType) ?? item.PropertyType);
                }
                var fieldName = item.Name;
                foreach (var field in item.GetCustomAttributes(true).OfType<ColumnAttribute>())//获得字段名
                {
                    fieldName = field.Name;
                }
                var fieldType = item.PropertyType;
                if (fieldType.IsGenericType && fieldType.GetGenericTypeDefinition() == typeof(Nullable<>))
                {
                    // If it is NULLABLE, then get the underlying type. eg if "Nullable<int>" then this will return just "int"
                    fieldType = fieldType.GetGenericArguments()[0];
                }
                var flag = false;//字段是否自增长
                foreach (var field in item.GetCustomAttributes(true).OfType<DatabaseGeneratedAttribute>())
                {
                    if (field.DatabaseGeneratedOption == DatabaseGeneratedOption.Identity)
                    {
                        flag = true;
                    }
                }
                if (!flag && value != null)
                {
                    sbNames.AppendFormat("{0},", fieldName);
                    fieldName = $"@{fieldName}";
                    sbValues.AppendFormat("{0},", fieldName);
                    param.Add(ToSqlParameter(fieldName, fieldType, value));
                }
            }
            if (sbNames.Length > 0 && sbValues.Length > 0)
            {
                sbNames = sbNames.Remove(sbNames.Length - 1, 1);
                sbValues = sbValues.Remove(sbValues.Length - 1, 1);
            }
            sb.AppendFormat("INSERT INTO {0} ({1}) VALUES ({2})", tableName, sbNames, sbValues);
            return new Dictionary<string, IEnumerable<DbParameter>> { [sb.ToString()] = param }.First();
        }

        public static DbParameter ToSqlParameter(string dataName, Type dataType, object dataValue)
        {
            DbParameter param;
            if (dataType == typeof(long))
            {
                param = new SqlParameter(dataName, SqlDbType.BigInt);
            }
            else if (dataType == typeof(byte))
            {
                param = new SqlParameter(dataName, SqlDbType.Binary);
            }
            else if (dataType == typeof(bool))
            {
                param = new SqlParameter(dataName, SqlDbType.Bit);
            }
            else if (dataType == typeof(DateTime))
            {
                param = new SqlParameter(dataName, SqlDbType.DateTime);
            }
            else if (dataType == typeof(decimal))
            {
                param = new SqlParameter(dataName, SqlDbType.Decimal);
            }
            else if (dataType == typeof(double))
            {
                param = new SqlParameter(dataName, SqlDbType.Float);
            }
            else if (dataType == typeof(int))
            {
                param = new SqlParameter(dataName, SqlDbType.Int);
            }
            else if (dataType == typeof(float))
            {
                param = new SqlParameter(dataName, SqlDbType.Real);
            }
            else if (dataType == typeof(short))
            {
                param = new SqlParameter(dataName, SqlDbType.SmallInt);
            }
            else if (dataType == typeof(TimeSpan))
            {
                param = new SqlParameter(dataName, SqlDbType.Timestamp);
            }
            else if (dataType == typeof(Guid))
            {
                param = new SqlParameter(dataName, SqlDbType.UniqueIdentifier);
            }
            else
            {
                param = new SqlParameter(dataName, SqlDbType.VarChar, 255);
            }
            param.Value = dataValue;
            return param;
        }
    }
}
