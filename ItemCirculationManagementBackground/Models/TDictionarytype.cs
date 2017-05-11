using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_DictionaryType")]
	public class TDictionarytype
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
		/// 编码
		/// </summary>
		[Column("Code")]
		public string Code
		{
			set;
			get;
		}

		/// <summary>
		/// 内容
		/// </summary>
		[Column("Value")]
		public string Value
		{
			set;
			get;
		}

		/// <summary>
		/// 状态 类型1001
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
			return "Id=" + Id + ",Code=" + Code + ",Value=" + Value + ",Status=" + Status + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
