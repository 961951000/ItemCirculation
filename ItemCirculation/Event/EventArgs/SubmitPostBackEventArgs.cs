using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ItemCirculation.Models;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Event.EventArgs
{
    public class SubmitPostBackEventArgs
    {
        public List<CirculationView> View;
    }
}
