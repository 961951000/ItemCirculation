using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Models
{
	/// <summary>
	/// 流通信息表
	/// </summary>
	[Table("circulation")]
	public class Circulation
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
		/// 借出人编号
		/// </summary>
		[Column("loan_student_id")]
		public int? LoanStudentId
		{
			set;
			get;
		}

		/// <summary>
		/// 归还人编号
		/// </summary>
		[Column("return_student_id")]
		public int? ReturnStudentId
		{
			set;
			get;
		}

		/// <summary>
		/// 借出时间
		/// </summary>
		[Column("loan_time")]
		public DateTime? LoanTime
		{
			set;
			get;
		}

		/// <summary>
		/// 归还时间
		/// </summary>
		[Column("return_time")]
		public DateTime? ReturnTime
		{
			set;
			get;
		}

		[Column("is_return")]
		public bool? IsReturn
		{
			set;
			get;
		}

		/// <summary>
		/// 备注
		/// </summary>
		[Column("remark")]
		public string Remark
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",ItemId=" + ItemId + ",LoanStudentId=" + LoanStudentId + ",ReturnStudentId=" + ReturnStudentId + ",LoanTime=" + LoanTime + ",ReturnTime=" + ReturnTime + ",IsReturn=" + IsReturn + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
