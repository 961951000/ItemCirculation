using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("R_UserPosition")]
	public class RUserposition
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
		/// 用户表ID
		/// </summary>
		[Column("UserId")]
		public int? Userid
		{
			set;
			get;
		}

		/// <summary>
		/// 职位表ID
		/// </summary>
		[Column("PositionId")]
		public int? Positionid
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
		/// 创建人  用户表ID
		/// </summary>
		[Column("CreateBy")]
		public DateTime? Createby
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",Userid=" + Userid + ",Positionid=" + Positionid + ",Createdate=" + Createdate + ",Createby=" + Createby;
		}
		#endregion Model
	}
}
