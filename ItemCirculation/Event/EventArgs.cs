using System;
using System.Collections.Generic;
using ItemCirculation.Models;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Event
{
    public class IdentityVerificationFinishEventArgs : EventArgs
    {
        public Student Student { get; set; }
    }

    public class SubmitPostBackEventArgs : EventArgs
    {
        /// <summary>
        /// 流通信息显示
        /// </summary>
        public List<CirculationView> View;
        /// <summary>
        /// 流通信息显示
        /// </summary>
        public int SuccessCount;
    }
}
