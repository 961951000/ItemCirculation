using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Common;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;

namespace ItemCirculation.Data.DatabaseContext
{
    public class ItemDetailBatch
    {
        public static KeyValuePair<string, IEnumerable<DbParameter>> BatchAdd(IItemDetails entity)
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
                param = new MySqlParameter(dataName, MySqlDbType.Int64);
            }
            else if (dataType == typeof(byte))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Byte);
            }
            else if (dataType == typeof(bool))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Bit);
            }
            else if (dataType == typeof(DateTime))
            {
                param = new MySqlParameter(dataName, MySqlDbType.DateTime);
            }
            else if (dataType == typeof(decimal))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Decimal);
            }
            else if (dataType == typeof(double))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Double);
            }
            else if (dataType == typeof(int))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Int32);
            }
            else if (dataType == typeof(float))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Float);
            }
            else if (dataType == typeof(short))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Int16);
            }
            else if (dataType == typeof(TimeSpan))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Timestamp);
            }
            else if (dataType == typeof(Guid))
            {
                param = new MySqlParameter(dataName, MySqlDbType.Guid);
            }
            else
            {
                param = new MySqlParameter(dataName, MySqlDbType.VarChar, 255);
            }
            param.Value = dataValue;
            return param;
        }
    }
}
