using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemCirculation.ViewModels
{
    public class StudentView
    {
        /// <summary>
        /// 自动编号
        /// </summary>
        public string Id
        {
            set;
            get;
        }
        /// <summary>
        /// 物理卡号
        /// </summary>
        public string CardMacCode
        {
            set;
            get;
        }
        /// <summary>
        /// 学籍号
        /// </summary>
        public string StudentCode
        {
            set;
            get;
        }

        /// <summary>
        /// 学生姓名
        /// </summary>
        public string StudentName
        {
            set;
            get;
        }

        /// <summary>
        /// 年级名称
        /// </summary>
        public string GradeName
        {
            set;
            get;
        }

        /// <summary>
        /// 班级名称
        /// </summary>
        public string ClassName
        {
            set;
            get;
        }
    }
}
