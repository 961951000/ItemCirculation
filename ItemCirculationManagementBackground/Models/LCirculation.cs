using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManagementBackground.Models
{
    [Table("L_Circulation")]
    public class LCirculation
    {
        #region Model
        [Key, Column("ID", Order = 0)]
        public int? Id
        {
            set;
            get;
        }

        [Column("MachineID")]
        public int? Machineid
        {
            set;
            get;
        }

        [Column("StaffId")]
        public int? Staffid
        {
            set;
            get;
        }

        [Column("CirculationType")]
        public string Circulationtype
        {
            set;
            get;
        }

        [Column("BookBarcode")]
        public string Bookbarcode
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

        [Column("CirculationDate")]
        public DateTime? Circulationdate
        {
            set;
            get;
        }

        public override string ToString()
        {
            return "Id=" + Id + ",Machineid=" + Machineid + ",Staffid=" + Staffid + ",Circulationtype=" + Circulationtype + ",Bookbarcode=" + Bookbarcode + ",Patroncode=" + Patroncode + ",Circulationdate=" + Circulationdate;
        }
        #endregion Model
    }
}
