using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_MachineStatus")]
	public class TMachinestatus
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

		[Column("Status")]
		public string Status
		{
			set;
			get;
		}

		[Column("ServiceCommand")]
		public string Servicecommand
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

		public override string ToString()
		{
			return "Id=" + Id + ",Machineid=" + Machineid + ",Status=" + Status + ",Servicecommand=" + Servicecommand + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate;
		}
		#endregion Model
	}
}
