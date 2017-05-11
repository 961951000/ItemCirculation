using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Models
{
	/// <summary>
	/// 学籍卡信息表
	/// </summary>
	[Table("school_card")]
	public class SchoolCard
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
		/// 物理卡号
		/// </summary>
		[Column("card_mac_code")]
		public string CardMacCode
		{
			set;
			get;
		}

		/// <summary>
		/// 学籍号
		/// </summary>
		[Column("student_code")]
		public string StudentCode
		{
			set;
			get;
		}

		/// <summary>
		/// 创建时间
		/// </summary>
		[Column("create_time")]
		public DateTime? CreateTime
		{
			set;
			get;
		}

		/// <summary>
		/// 修改时间
		/// </summary>
		[Column("update_time")]
		public DateTime? UpdateTime
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",CardMacCode=" + CardMacCode + ",StudentCode=" + StudentCode + ",CreateTime=" + CreateTime + ",UpdateTime=" + UpdateTime;
		}
		#endregion Model
	}
}
