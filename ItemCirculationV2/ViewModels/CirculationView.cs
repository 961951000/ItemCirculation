﻿namespace ItemCirculationV2.ViewModels
{
    public class CirculationView
    {
        /// <summary>
        /// 物品信息编号
        /// </summary>
        public int? ItemId
        {
            set;
            get;
        }
        /// <summary>
        /// RFID标识识别号
        /// </summary>
        public string Uid
        {
            set;
            get;
        }
        /// <summary>
        /// 物品编号
        /// </summary>
        public string ItemNumber
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
        /// 物品状态码
        /// </summary>
        public int? ItemStateCode
        {
            set;
            get;
        }
        /// <summary>
        /// 操作结果
        /// </summary>
        public bool ExecuteResult { get; set; }
    }
}
