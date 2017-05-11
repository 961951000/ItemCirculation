using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Models
{
	/// <summary>
	/// 物品状态表
	/// </summary>
	[Table("item_state")]
	public class ItemState
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
		/// 物品状态码
		/// </summary>
		[Column("code")]
		public int? Code
		{
			set;
			get;
		}

		/// <summary>
		/// 物品状态
		/// </summary>
		[Column("state")]
		public string State
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",Code=" + Code + ",State=" + State;
		}
		#endregion Model
	}
}
