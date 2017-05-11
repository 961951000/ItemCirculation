using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_AcsParam")]
	public class TAcsparam
	{
		#region Model
		[Key, Column("id", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		[Column("Param")]
		public string Param
		{
			set;
			get;
		}

		[Column("LoginId")]
		public string Loginid
		{
			set;
			get;
		}

		[Column("LoginPwd")]
		public string Loginpwd
		{
			set;
			get;
		}

		[Column("LoginCode")]
		public string Logincode
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

		[Column("UpdateDate")]
		public DateTime? Updatedate
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
			return "Id=" + Id + ",Param=" + Param + ",Loginid=" + Loginid + ",Loginpwd=" + Loginpwd + ",Logincode=" + Logincode + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
