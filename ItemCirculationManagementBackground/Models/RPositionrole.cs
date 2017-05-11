using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("R_PositionRole")]
	public class RPositionrole
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
		/// 职位表ID
		/// </summary>
		[Column("PositionId")]
		public int? Positionid
		{
			set;
			get;
		}

		/// <summary>
		/// 权限表ID
		/// </summary>
		[Column("RoleId")]
		public int? Roleid
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
			return "Id=" + Id + ",Positionid=" + Positionid + ",Roleid=" + Roleid + ",Createdate=" + Createdate + ",Createby=" + Createby;
		}
		#endregion Model
	}
}
