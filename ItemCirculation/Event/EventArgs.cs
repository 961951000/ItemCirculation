using System;
using System.Collections.Generic;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Event
{
    public class IdentityVerificationFinishEventArgs : EventArgs
    {
        public StudentView View { get; set; }
    }
    public class RetreatEventArgs : EventArgs
    {
        /// <summary>
        /// 操作成功计数
        /// </summary>
        public long SuccessCount;
    }
    public class SubmitPostBackEventArgs : EventArgs
    {
        /// <summary>
        /// 流通信息显示
        /// </summary>
        public List<CirculationView> View;
    }
}
