using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemCirculation.Data.Models
{
    /// <summary>
	/// 设备类型表
	/// </summary>
	[Table("machine_type")]
    public class MachineType
    {
        #region Model
        /// <summary>
        /// 自动编号
        /// </summary>
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity), Column("id", Order = 0)]
        public int? Id
        {
            set;
            get;
        }

        /// <summary>
        /// 类型名称
        /// </summary>
        [Column("type_name")]
        public string TypeName
        {
            set;
            get;
        }

        public override string ToString()
        {
            return "Id=" + Id + ",TypeName=" + TypeName;
        }
        #endregion Model
    }
}
