using System;
using ItemCirculation.Service;

namespace ItemCirculation.Event
{
    public class ListenEvent
    {
        public bool IsRun = false;
        /// <summary>
        /// 定义委托
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public delegate void RfidReadEventHandler(object sender, EventArgs e);
        /// <summary>
        /// 此委托类型的事件
        /// </summary>
        public event RfidReadEventHandler RfidRead;
        public ListenEvent()
        {
            var rfidListen = new RfidReadEventMonitor(this, null);
        }
        public void RfidRun()
        {
            IsRun = true;
            while (IsRun)
            {
                Console.WriteLine();
                Console.WriteLine(@"请输入：");
                var result = Console.ReadLine();
                if (result == "1")
                {
                    RfidRead?.Invoke(this, new EventArgs());
                }
            }
        }

        public void RfidStop()
        {
            IsRun = false;
        }
    }
}
