using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_User")]
	public class TUser : ItemDetails
    {
		#region Model
		[Key, Column("id", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		[Column("CardCode")]
		public string Cardcode
		{
			set;
			get;
		}

		[Column("PatronCode")]
		public string Patroncode
		{
			set;
			get;
		}

		[Column("Name")]
		public string Name
		{
			set;
			get;
		}

		[Column("Sex")]
		public string Sex
		{
			set;
			get;
		}

		[Column("Phone")]
		public string Phone
		{
			set;
			get;
		}

		[Column("Email")]
		public string Email
		{
			set;
			get;
		}

		[Column("Address")]
		public string Address
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
			return "Id=" + Id + ",Cardcode=" + Cardcode + ",Patroncode=" + Patroncode + ",Name=" + Name + ",Sex=" + Sex + ",Phone=" + Phone + ",Email=" + Email + ",Address=" + Address + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
