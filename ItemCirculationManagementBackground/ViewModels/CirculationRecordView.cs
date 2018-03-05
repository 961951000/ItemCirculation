using System;

namespace ItemCirculationManagementBackground.ViewModels
{
    public class CirculationRecordView
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
        /// 学生姓名
        /// </summary>
        public string StudentName
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
        /// 物品存放地址
        /// </summary>
        public string ItemLocation
        {
            set;
            get;
        }

        /// <summary>
        /// 操作时间
        /// </summary>
        public DateTime? ActionTime
        {
            set;
            get;
        }

        /// <summary>
        /// 操作类型
        /// </summary>
        public string ActionType
        {
            set;
            get;
        }
    }
}
