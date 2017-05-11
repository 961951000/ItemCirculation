using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_WaitCheckBook")]
	public class TWaitcheckbook
	{
		#region Model
		/// <summary>
		/// 自增长
		/// </summary>
		[Key, Column("ID", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		/// <summary>
		/// 包 ID
		/// </summary>
		[Column("PackageId")]
		public int? Packageid
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
		/// RFID 的TID
		/// </summary>
		[Column("Tid")]
		public string Tid
		{
			set;
			get;
		}

		[Column("Size")]
		public string Size
		{
			set;
			get;
		}

		[Column("Publisher")]
		public string Publisher
		{
			set;
			get;
		}

		[Column("Page")]
		public int? Page
		{
			set;
			get;
		}

		[Column("ISBN")]
		public string Isbn
		{
			set;
			get;
		}

		[Column("Name")]
		public string Name
		{
			set;
			get;
		}

		[Column("Author")]
		public string Author
		{
			set;
			get;
		}

		/// <summary>
		/// 索书号
		/// </summary>
		[Column("CallId")]
		public string Callid
		{
			set;
			get;
		}

		/// <summary>
		/// 状态  1005
		/// </summary>
		[Column("Status")]
		public string Status
		{
			set;
			get;
		}

		/// <summary>
		/// 失败理由1011
		/// </summary>
		[Column("FailReason")]
		public string Failreason
		{
			set;
			get;
		}

		[Column("CreateDate")]
		public DateTime? Createdate
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

		[Column("CreateBy")]
		public int? Createby
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

		[Column("Remark")]
		public string Remark
		{
			set;
			get;
		}

		[Column("price")]
		public double? Price
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",Packageid=" + Packageid + ",Barcode=" + Barcode + ",Tid=" + Tid + ",Size=" + Size + ",Publisher=" + Publisher + ",Page=" + Page + ",Isbn=" + Isbn + ",Name=" + Name + ",Author=" + Author + ",Callid=" + Callid + ",Status=" + Status + ",Failreason=" + Failreason + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark + ",Price=" + Price;
		}
		#endregion Model
	}
}
