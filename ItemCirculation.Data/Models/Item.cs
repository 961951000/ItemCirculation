using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Data.Models
{
    /// <summary>
    /// 物品信息表
    /// </summary>
    [Table("item")]
    public class Item
    {
        #region Model
        /// <summary>
        /// 自动编号
        /// </summary>
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity), Column("id", Order = 0)]
        public int? Id
        {
            set;
            get;
        }

        /// <summary>
        /// RFID标识识别号
        /// </summary>
        [Column("uid")]
        public string Uid
        {
            set;
            get;
        }

        /// <summary>
        /// 物品编号
        /// </summary>
        [Column("item_number")]
        public string ItemNumber
        {
            set;
            get;
        }

        /// <summary>
        /// 物品名称
        /// </summary>
        [Column("item_name")]
        public string ItemName
        {
            set;
            get;
        }

        /// <summary>
        /// 物品型号
        /// </summary>
        [Column("item_type")]
        public string ItemType
        {
            set;
            get;
        }

        /// <summary>
        /// 物品存放地址
        /// </summary>
        [Column("item_location")]
        public string ItemLocation
        {
            set;
            get;
        }

        /// <summary>
        /// 物品状态代码
        /// </summary>
        [Column("item_state_code")]
        public int? ItemStateCode
        {
            set;
            get;
        }

        /// <summary>
		/// 设备编号
		/// </summary>
		[Column("machine_id")]
        public int? MachineId
        {
            set;
            get;
        }

        /// <summary>
        /// 创建时间
        /// </summary>
        [Column("create_time")]
        public DateTime? CreateTime
        {
            set;
            get;
        }

        /// <summary>
        /// 修改时间
        /// </summary>
        [Column("update_time")]
        public DateTime? UpdateTime
        {
            set;
            get;
        }

        public override string ToString()
        {
            return "Id=" + Id + ",Uid=" + Uid + ",ItemNumber=" + ItemNumber + ",ItemName=" + ItemName + ",ItemType=" + ItemType + ",ItemLocation=" + ItemLocation + ",ItemStateCode=" + ItemStateCode + ",MachineId=" + MachineId + ",CreateTime=" + CreateTime + ",UpdateTime=" + UpdateTime;
        }
        #endregion Model
    }
}
