using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_Dictionary")]
	public class TDictionary
	{
		#region Model
		[Key, Column("ID", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		[Column("Code")]
		public string Code
		{
			set;
			get;
		}

		[Column("ParentCode")]
		public string Parentcode
		{
			set;
			get;
		}

		[Column("LanguageCode")]
		public string Languagecode
		{
			set;
			get;
		}

		[Column("Value")]
		public string Value
		{
			set;
			get;
		}

		[Column("Status")]
		public string Status
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
			return "Id=" + Id + ",Code=" + Code + ",Parentcode=" + Parentcode + ",Languagecode=" + Languagecode + ",Value=" + Value + ",Status=" + Status + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
