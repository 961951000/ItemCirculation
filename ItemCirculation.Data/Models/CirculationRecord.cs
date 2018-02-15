using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Data.Models
{
	/// <summary>
	/// 流通记录表
	/// </summary>
	[Table("circulation_record")]
	public class CirculationRecord
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
		/// 物品编号
		/// </summary>
		[Column("item_id")]
		public int? ItemId
		{
			set;
			get;
		}

		/// <summary>
		/// 学生编号
		/// </summary>
		[Column("student_id")]
		public int? StudentId
		{
			set;
			get;
		}

		/// <summary>
		/// 操作编号
		/// </summary>
		[Column("action_id")]
		public string ActionId
		{
			set;
			get;
		}

		/// <summary>
		/// 操作时间
		/// </summary>
		[Column("action_time")]
		public DateTime? ActionTime
		{
			set;
			get;
		}

		/// <summary>
		/// 备注
		/// </summary>
		[Column("comment")]
		public string Comment
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",ItemId=" + ItemId + ",StudentId=" + StudentId + ",ActionId=" + ActionId + ",ActionTime=" + ActionTime + ",Comment=" + Comment;
		}
		#endregion Model
	}
}
