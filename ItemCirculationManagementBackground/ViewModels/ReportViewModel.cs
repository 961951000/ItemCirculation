using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemCirculationManagementBackground.ViewModels
{
    public class ReportViewModel
    {
        public int MachineCount
        {
            set;
            get;
        }


        public string ServiceCount
        {
            set;
            get;
        }

        public string LoanPersonCount
        {
            set;
            get;
        }

        public string ServiceTime
        {
            set;
            get;
        }

        public string GoodMachinePercentage
        {
            set;
            get;
        }

        public string Machine1Name
        {
            set;
            get;
        }

        public long Machine1Count
        {
            set;
            get;
        }

        public string Machine2Name
        {
            set;
            get;
        }

        public long Machine2Count
        {
            set;
            get;
        }

        public long OtherMachineCount
        {
            set;
            get;
        }

        public long Machine1LoanCount
        {
            set;
            get;
        }

        public long Machine1ReturnCount
        {
            set;
            get;
        }

        public long Machine2LoanCount
        {
            set;
            get;
        }

        public long Machine2ReturnCount
        {
            set;
            get;
        }

        public long OtherLoanCount
        {
            set;
            get;
        }

        public long OtherReturnCount
        {
            set;
            get;
        }
    }
}
