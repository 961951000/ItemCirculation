using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Data.Models
{
	/// <summary>
	/// 操作类型表
	/// </summary>
	[Table("action_type")]
	public class ActionType
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
		/// 操作类型代码
		/// </summary>
		[Column("action_type_code")]
		public int? ActionTypeCode
		{
			set;
			get;
		}

		/// <summary>
		/// 操作类型名称
		/// </summary>
		[Column("action_type_name")]
		public string ActionTypeName
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",ActionTypeCode=" + ActionTypeCode + ",ActionTypeName=" + ActionTypeName;
		}
		#endregion Model
	}
}
