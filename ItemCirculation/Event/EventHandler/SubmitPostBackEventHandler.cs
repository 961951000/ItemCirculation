using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ItemCirculation.Event.EventArgs;

namespace ItemCirculation.Event.EventHandler
{
    public delegate void SubmitPostBackEventHandler(object sender, SubmitPostBackEventArgs e);
}
