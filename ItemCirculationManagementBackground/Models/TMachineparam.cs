using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_MachineParam")]
	public class TMachineparam
	{
		#region Model
		[Key, Column("id", Order = 0)]
		public int? Id
		{
			set;
			get;
		}

		[Column("MachineId")]
		public int? Machineid
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
			return "Id=" + Id + ",Machineid=" + Machineid + ",Param=" + Param + ",Createdate=" + Createdate + ",Createby=" + Createby + ",Updatedate=" + Updatedate + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
