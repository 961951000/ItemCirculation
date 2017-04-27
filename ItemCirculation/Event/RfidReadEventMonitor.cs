using System;
using ItemCirculation.Service;

namespace ItemCirculation.Event
{
    public class RfidReadEventMonitor
    {
        public RfidReadEventMonitor(ListenEvent sender, EventArgs e)
        {
            sender.RfidRead += ShowMessage;
        }
        public void ShowMessage(object sender, EventArgs e)
        {
            Console.WriteLine(@"hello word!!");
        }
    }
}
