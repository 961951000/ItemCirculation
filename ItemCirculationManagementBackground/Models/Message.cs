using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManagementBackground.Models
{
    public class Message
    {
        /// <summary>
        /// 操作成功提示消息
        /// </summary>
        public static string SuccecssMessage => ConfigurationManager.AppSettings["SuccecssMessage"];
        /// <summary>
        /// 操作失败提示消息
        /// </summary>
        public static string FailMessage => ConfigurationManager.AppSettings["FailMessage"];
    }
}
