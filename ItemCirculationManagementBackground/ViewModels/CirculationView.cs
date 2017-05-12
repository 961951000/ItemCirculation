using System;

namespace ItemCirculationManagementBackground.ViewModels
{
    public class CirculationView
    {
        /// <summary>
        /// 编号
        /// </summary>
        public int? Id
        {
            set;
            get;
        }     
        /// <summary>
        /// 物品名称
        /// </summary>
        public string ItemName
        {
            set;
            get;
        }

        /// <summary>
        /// 物品型号
        /// </summary>
        public string ItemType
        {
            set;
            get;
        }

        /// <summary>
        /// 借出人学籍号
        /// </summary>
        public string LoanStudentCode
        {
            set;
            get;
        }

        /// <summary>
        /// 借出人姓名
        /// </summary>
        public string LoanStudentName
        {
            set;
            get;
        }

        /// <summary>
        /// 归还人学籍号
        /// </summary>
        public string ReturnStudentCode
        {
            set;
            get;
        }

        /// <summary>
        /// 归还人姓名
        /// </summary>
        public string ReturnStudentName
        {
            set;
            get;
        }

        /// <summary>
        /// 借出时间
        /// </summary>
        public DateTime? LoanTime
        {
            set;
            get;
        }

        /// <summary>
        /// 归还时间
        /// </summary>
        public DateTime? ReturnTime
        {
            set;
            get;
        }
    }
}
