using System.Linq;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Event;

namespace ItemCirculation.Service
{
    public class LoginService
    {
        public event FinishEventHandler IdentityVerificationFinish;
        /// <summary>
        /// 身份验证
        /// </summary>
        /// <param name="cardMacCode">读者卡号</param>
        /// <returns>读者信息</returns>
        public void IdentityVerification(string cardMacCode)
        {
            using (var db = new MySqlDbContext())
            {
                var studentCode = db.SchoolCard.Single(x => x.CardMacCode == cardMacCode).StudentCode;
                var entity = db.Student.Single(x => x.StudentCode == studentCode);
                IdentityVerificationFinish?.Invoke(this, new IdentityVerificationFinishEventArgs { Student = entity });
            }
        }
    }
}
