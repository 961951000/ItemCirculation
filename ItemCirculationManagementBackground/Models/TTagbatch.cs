using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
	[Table("T_TagBatch")]
	public class TTagbatch
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
		/// 供应商ID
		/// </summary>
		[Column("SupplierId")]
		public int? Supplierid
		{
			set;
			get;
		}

		/// <summary>
		/// 批次号
		/// </summary>
		[Column("Code")]
		public string Code
		{
			set;
			get;
		}

		/// <summary>
		/// 标签批次状态 类型1008
		/// </summary>
		[Column("Status")]
		public string Status
		{
			set;
			get;
		}

		/// <summary>
		/// 型号
		/// </summary>
		[Column("Model")]
		public string Model
		{
			set;
			get;
		}

		/// <summary>
		/// 数量
		/// </summary>
		[Column("Count")]
		public int? Count
		{
			set;
			get;
		}

		[Column("PicturePath")]
		public string Picturepath
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
			return "Id=" + Id + ",Supplierid=" + Supplierid + ",Code=" + Code + ",Status=" + Status + ",Model=" + Model + ",Count=" + Count + ",Picturepath=" + Picturepath + ",Createdate=" + Createdate + ",Updatedate=" + Updatedate + ",Createby=" + Createby + ",Updateby=" + Updateby + ",Remark=" + Remark;
		}
		#endregion Model
	}
}
