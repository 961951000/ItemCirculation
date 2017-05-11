using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_Tag")]
	public class TTag
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
		/// TagBatch 的ID
		/// </summary>
		[Column("BatchId")]
		public int? Batchid
		{
			set;
			get;
		}

		/// <summary>
		/// 标签类型 TYPE1009
		/// </summary>
		[Column("Type")]
		public string Type
		{
			set;
			get;
		}

		/// <summary>
		/// TID
		/// </summary>
		[Column("Tid")]
		public string Tid
		{
			set;
			get;
		}

		/// <summary>
		/// 标签状态  TYPE 1004
		/// </summary>
		[Column("Status")]
		public string Status
		{
			set;
			get;
		}

		/// <summary>
		/// 创建时间
		/// </summary>
		[Column("CreateDate")]
		public DateTime? Createdate
		{
			set;
			get;
		}

		/// <summary>
		/// 最后更新时间
		/// </summary>
		[Column("UpdateDate")]
		public DateTime? Updatedate
		{
			set;
			get;
		}

		/// <summary>
		/// 创建者 用户表ID
		/// </summary>
		[Column("CreateBy")]
		public int? Createby
		{
			set;
			get;
		}

		/// <summary>
		/// 最后更新者 用户表ID
		/// </summary>
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

		public override string ToString()
		{
			return "Id=" + Id + ",Batchid=" + Batchid + ",Type=" + Type + ",Tid=" + Tid + ",Status=" + Status + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
