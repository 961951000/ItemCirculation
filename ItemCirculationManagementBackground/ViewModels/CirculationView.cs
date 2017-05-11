using System;

namespace ItemCirculationManagementBackground.ViewModels
{
    public class CirculationView
    {
        #region Model
        /// <summary>
        /// 编号
        /// </summary>
        public int? Id
        {
            set;
            get;
        }
        /// <summary>
        /// 图书电子标签
        /// </summary>
        public string Bookbarcode
        {
            set;
            get;
        }
        /// <summary>
        /// 借出人学籍号
        /// </summary>
        public string LendPatronCode
        {
            set;
            get;
        }
        /// <summary>
        /// 借出时间
        /// </summary>
        public DateTime? LendTime
        {
            set;
            get;
        }
        /// <summary>
        /// 借出人姓名
        /// </summary>
        public string LendUserName
        {
            set;
            get;
        }
        /// <summary>
        /// 归还人学籍号
        /// </summary>
        public string ReturnPatronCode
        {
            set;
            get;
        }
        /// <summary>
        /// 归还人借出时间
        /// </summary>
        public DateTime? ReturnTime
        {
            set;
            get;
        }
        /// <summary>
        /// 归还人姓名
        /// </summary>
        public string ReturnUserName
        {
            set;
            get;
        }
        /// <summary>
        /// 仪器名称
        /// </summary>
        public string BookName
        {
            set;
            get;
        }
        /// <summary>
        /// 仪器型号
        /// </summary>
        public string Author
        {
            set;
            get;
        }       
        #endregion Model
    }
}
