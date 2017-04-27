namespace ItemCirculation.Event
{
    /// <summary>
    /// 提交返回处理程序
    /// </summary>
    public delegate void SubmitPostBackEventHandler(object sender, SubmitPostBackEventArgs e);
    /// <summary>
    /// 身份验证结束处理程序
    /// </summary>
    public delegate void IdentityVerificationFinishHandler(object sender, IdentityVerificationFinishEventArgs e);
}
