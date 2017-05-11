using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_MACHINE")]
	public class TMachine
	{
		#region Model
		[Column("id")]
		public int? Id
		{
			set;
			get;
		}

		[Column("mac")]
		public string Mac
		{
			set;
			get;
		}

		[Column("cpu")]
		public string Cpu
		{
			set;
			get;
		}

		[Column("name")]
		public string Name
		{
			set;
			get;
		}

		[Column("type")]
		public string Type
		{
			set;
			get;
		}

		[Column("regCode")]
		public string Regcode
		{
			set;
			get;
		}

		[Column("regTime")]
		public DateTime? Regtime
		{
			set;
			get;
		}

		[Column("createdate")]
		public DateTime? Createdate
		{
			set;
			get;
		}

		[Column("updatedate")]
		public DateTime? Updatedate
		{
			set;
			get;
		}

		[Column("createby")]
		public int? Createby
		{
			set;
			get;
		}

		[Column("updateby")]
		public int? Updateby
		{
			set;
			get;
		}

		[Column("remark")]
		public string Remark
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",Mac=" + Mac + ",Cpu=" + Cpu + ",Name=" + Name + ",Type=" + Type + ",Regcode=" + Regcode + ",Regtime=" + Regtime + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
