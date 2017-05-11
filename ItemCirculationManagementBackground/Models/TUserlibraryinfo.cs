using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_UserLibraryInfo")]
	public class TUserlibraryinfo
	{
		#region Model
		[Key, Column("id", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		[Column("UserId")]
		public int? Userid
		{
			set;
			get;
		}

		[Column("Password")]
		public string Password
		{
			set;
			get;
		}

		[Column("ChargedCount")]
		public int? Chargedcount
		{
			set;
			get;
		}

		[Column("ChargedLimit")]
		public int? Chargedlimit
		{
			set;
			get;
		}

		[Column("OverdueCount")]
		public int? Overduecount
		{
			set;
			get;
		}

		[Column("OverdueLimit")]
		public int? Overduelimit
		{
			set;
			get;
		}

		[Column("Fee")]
		public double? Fee
		{
			set;
			get;
		}

		[Column("FeeLimit")]
		public double? Feelimit
		{
			set;
			get;
		}

		[Column("CreateDate")]
		public DateTime? Createdate
		{
			set;
			get;
		}

		[Column("CreateBy")]
		public int? Createby
		{
			set;
			get;
		}

		[Column("UpdateDate")]
		public DateTime? Updatedate
		{
			set;
			get;
		}

		[Column("UpdateBy")]
		public int? Updateby
		{
			set;
			get;
		}

		[Column("Remark")]
		public string Remark
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",Userid=" + Userid + ",Password=" + Password + ",Chargedcount=" + Chargedcount + ",Chargedlimit=" + Chargedlimit + ",Overduecount=" + Overduecount + ",Overduelimit=" + Overduelimit + ",Fee=" + Fee + ",Feelimit=" + Feelimit + ",Createdate=" + Createdate + ",Createby=" + Createby + ",Updatedate=" + Updatedate + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
