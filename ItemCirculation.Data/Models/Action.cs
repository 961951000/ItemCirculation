using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Data.Models
{
	/// <summary>
	/// 操作信息表
	/// </summary>
	[Table("action")]
	public class Action
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
		/// 操作代码
		/// </summary>
		[Column("action_code")]
		public int? ActionCode
		{
			set;
			get;
		}

		/// <summary>
		/// 操作名称
		/// </summary>
		[Column("action_name")]
		public string ActionName
		{
			set;
			get;
		}

		/// <summary>
		/// 操作类型编号
		/// </summary>
		[Column("action_type_id")]
		public int? ActionTypeId
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",ActionCode=" + ActionCode + ",ActionName=" + ActionName + ",ActionTypeId=" + ActionTypeId;
		}
		#endregion Model
	}
}
