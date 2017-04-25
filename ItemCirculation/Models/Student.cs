using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ItemCirculation.Models
{
	/// <summary>
	/// 学生信息表
	/// </summary>
	[Table("student")]
	public class Student
	{
		#region Model
		/// <summary>
		/// 自动编号
		/// </summary>
		[Key, DatabaseGenerated(DatabaseGeneratedOption.Identity), Column("id", Order = 0)]
		public string Id
		{
			set;
			get;
		}

		/// <summary>
		/// 学籍号
		/// </summary>
		[Column("student_code")]
		public string StudentCode
		{
			set;
			get;
		}

		/// <summary>
		/// 学生姓名
		/// </summary>
		[Column("student_name")]
		public string StudentName
		{
			set;
			get;
		}

		/// <summary>
		/// 年级名称
		/// </summary>
		[Column("grade_name")]
		public string GradeName
		{
			set;
			get;
		}

		/// <summary>
		/// 班级名称
		/// </summary>
		[Column("class_name")]
		public string ClassName
		{
			set;
			get;
		}

		/// <summary>
		/// 创建时间
		/// </summary>
		[Column("create_time")]
		public DateTime? CreateTime
		{
			set;
			get;
		}

		/// <summary>
		/// 修改时间
		/// </summary>
		[Column("update_time")]
		public DateTime? UpdateTime
		{
			set;
			get;
		}

		public override string ToString()
		{
			return "Id=" + Id + ",StudentCode=" + StudentCode + ",StudentName=" + StudentName + ",GradeName=" + GradeName + ",ClassName=" + ClassName + ",CreateTime=" + CreateTime + ",UpdateTime=" + UpdateTime;
		}
		#endregion Model
	}
}
