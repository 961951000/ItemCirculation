using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("L_TagInit")]
	public class LTaginit
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

		[Column("PatronCode")]
		public string Patroncode
		{
			set;
			get;
		}

		/// <summary>
		/// 标签表ID
		/// </summary>
		[Column("TagTid")]
		public string Tagtid
		{
			set;
			get;
		}

		/// <summary>
		/// 图书表ID
		/// </summary>
		[Column("BookBarcode")]
		public string Bookbarcode
		{
			set;
			get;
		}

		/// <summary>
		/// 操作类型 TYPE 1010 能力有限 弄不了
		/// </summary>
		[Column("Type")]
		public string Type
		{
			set;
			get;
		}

		/// <summary>
		/// 加工时间
		/// </summary>
		[Column("CreateDate")]
		public DateTime? Createdate
		{
			set;
			get;
		}

		/// <summary>
		/// 加工人员ID
		/// </summary>
		[Column("CreateBy")]
		public int? Createby
		{
			set;
			get;
		}

		/// <summary>
		/// 备注
		/// </summary>
		[Column("Remark")]
		public string Remark
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",Patroncode=" + Patroncode + ",Tagtid=" + Tagtid + ",Bookbarcode=" + Bookbarcode + ",Type=" + Type + ",Createdate=" + Createdate + ",Createby=" + Createby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
