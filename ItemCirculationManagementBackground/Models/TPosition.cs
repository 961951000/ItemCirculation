using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_Position")]
	public class TPosition
	{
		#region Model
		[Key, Column("ID", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		/// <summary>
		/// 职位名称 最长10个字符
		/// </summary>
		[Column("Name")]
		public string Name
		{
			set;
			get;
		}

		/// <summary>
		/// 启用、停用 T_Dictionary的Code， DictionaryType=1001
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
		/// 创建者  用户表ID
		/// </summary>
		[Column("CreateBy")]
		public int? Createby
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
		/// 最后更新者  用户表ID
		/// </summary>
		[Column("UpdateBy")]
		public int? Updateby
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
			return "Id=" + Id + ",Name=" + Name + ",Status=" + Status + ",Createdate=" + Createdate + ",Createby=" + Createby + ",Updatedate=" + Updatedate + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
