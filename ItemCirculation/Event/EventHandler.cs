using System;

namespace ItemCirculation.Event
{
    /// <summary>
    /// 提交事件处理程序
    /// </summary>
    public delegate void SubmitPostBackEventHandler(object sender, EventArgs e);
    /// <summary>
    /// 完成事件
    /// </summary>
    public delegate void FinishEventHandler(object sender, EventArgs e);
}
