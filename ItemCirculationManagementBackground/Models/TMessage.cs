using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_Message")]
	public class TMessage
	{
		#region Model
		[Column("id")]
		public int? Id
		{
			set;
			get;
		}

		[Column("code")]
		public string Code
		{
			set;
			get;
		}

		[Column("language")]
		public string Language
		{
			set;
			get;
		}

		[Column("value")]
		public string Value
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

		public override string ToString()
		{
			return "Id=" + Id + ",Code=" + Code + ",Language=" + Language + ",Value=" + Value + ",Remark=" + Remark + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby;
		}
		#endregion Model
	}
}
