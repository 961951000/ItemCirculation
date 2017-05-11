using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
    [Table("T_Book")]
    public class TBook : ItemDetails
    {
        #region Model
        /// <summary>
        /// 自增长
        /// </summary>
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity), Column("Id")]
        public int? Id
        {
            set;
            get;
        }

        /// <summary>
        /// 条形码
        /// </summary>
        [Column("Barcode")]
        public string Barcode
        {
            set;
            get;
        }

        /// <summary>
        /// 标签TID
        /// </summary>
        [Column("Tid")]
        public string Tid
        {
            set;
            get;
        }

        /// <summary>
        /// 书名
        /// </summary>
        [Column("Name")]
        public string Name
        {
            set;
            get;
        }

        /// <summary>
        /// 索书号
        /// </summary>
        [Column("CallCode")]
        public string Callcode
        {
            set;
            get;
        }

        /// <summary>
        /// 作者
        /// </summary>
        [Column("Author")]
        public string Author
        {
            set;
            get;
        }

        /// <summary>
        /// 出版社
        /// </summary>
        [Column("Publisher")]
        public string Publisher
        {
            set;
            get;
        }

        /// <summary>
        /// ISBN
        /// </summary>
        [Column("Isbn")]
        public string Isbn
        {
            set;
            get;
        }

        /// <summary>
        /// 尺寸 在Dictionary中， 4开 8开 16开等
        /// </summary>
        [Column("Size")]
        public string Size
        {
            set;
            get;
        }

        /// <summary>
        /// 页数
        /// </summary>
        [Column("Page")]
        public int? Page
        {
            set;
            get;
        }

        /// <summary>
        /// 状态 在馆、出借
        /// </summary>
        [Column("Status")]
        public string Status
        {
            set;
            get;
        }

        /// <summary>
        /// 码洋
        /// </summary>
        [Column("Price")]
        public double? Price
        {
            set;
            get;
        }

        /// <summary>
        /// 预约者
        /// </summary>
        [Column("HoldPatron")]
        public string Holdpatron
        {
            set;
            get;
        }

        /// <summary>
        /// 定位房间代码
        /// </summary>
        [Column("RoomCode")]
        public string Roomcode
        {
            set;
            get;
        }

        /// <summary>
        /// 位置代码
        /// </summary>
        [Column("LocationCode")]
        public string Locationcode
        {
            set;
            get;
        }

        /// <summary>
        /// 临时位置
        /// </summary>
        [Column("CurrentLocation")]
        public string Currentlocation
        {
            set;
            get;
        }

        /// <summary>
        /// 限还日期
        /// </summary>
        [Column("Duedate")]
        public DateTime? Duedate
        {
            set;
            get;
        }

        /// <summary>
        /// 创建日期
        /// </summary>
        [Column("CreateDate")]
        public DateTime? Createdate
        {
            set;
            get;
        }

        [Column("CreateBy")]
        public int? Createby
        {
            set;
            get;
        }

        [Column("UpdateDate")]
        public DateTime? Updatedate
        {
            set;
            get;
        }

        [Column("UpdateBy")]
        public int? Updateby
        {
            set;
            get;
        }

        [Column("LastLocationTime")]
        public DateTime? Lastlocationtime
        {
            set;
            get;
        }

        [Column("Remark")]
        public string Remark
        {
            set;
            get;
        }

        public override string ToString()
        {
            return "Id=" + Id + ",Barcode=" + Barcode + ",Tid=" + Tid + ",Name=" + Name + ",Callcode=" + Callcode + ",Author=" + Author + ",Publisher=" + Publisher + ",Isbn=" + Isbn + ",Size=" + Size + ",Page=" + Page + ",Status=" + Status + ",Price=" + Price + ",Holdpatron=" + Holdpatron + ",Roomcode=" + Roomcode + ",Locationcode=" + Locationcode + ",Currentlocation=" + Currentlocation + ",Duedate=" + Duedate + ",Createdate=" + Createdate + ",Createby=" + Createby + ",Updatedate=" + Updatedate + ",Updateby=" + Updateby + ",Lastlocationtime=" + Lastlocationtime + ",Remark=" + Remark;
        }
        #endregion Model
    }
}
