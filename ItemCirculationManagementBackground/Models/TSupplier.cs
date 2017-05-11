using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_Supplier")]
	public class TSupplier
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
		/// 供应商名
		/// </summary>
		[Column("Name")]
		public string Name
		{
			set;
			get;
		}

		/// <summary>
		/// 联系电话
		/// </summary>
		[Column("Phone")]
		public string Phone
		{
			set;
			get;
		}

		/// <summary>
		/// 联系人
		/// </summary>
		[Column("PersonName")]
		public string Personname
		{
			set;
			get;
		}

		/// <summary>
		/// 快递地址
		/// </summary>
		[Column("Address")]
		public string Address
		{
			set;
			get;
		}

		/// <summary>
		/// 启用、停用 1001
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
		/// 创建者  用户表ID
		/// </summary>
		[Column("CreateBy")]
		public int? Createby
		{
			set;
			get;
		}

		/// <summary>
		/// 最后更新者  用户表ID
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
			return "Id=" + Id + ",Name=" + Name + ",Phone=" + Phone + ",Personname=" + Personname + ",Address=" + Address + ",Status=" + Status + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
