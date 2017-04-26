using System;
using System.Linq;
using ItemCirculation.DatabaseContext;
using ItemCirculation.ViewModels;
using ItemCirculation.Views.Loan;

namespace ItemCirculation.Service
{
    public class LoginService
    {
        public event FrmLoanBegin.IdentityVerificationFinishHandler IdentityVerificationFinish;
        /// <summary>
        /// 身份验证
        /// </summary>
        /// <param name="mardMacCode">读者卡号</param>
        /// <returns>读者信息</returns>
        public void IdentityVerification(string mardMacCode)
        {
            StudentView entity = null;
            using (var db = new MySqlDbContext())
            {
                var query = from a in db.SchoolCard
                            join b in db.Student on a.StudentCode equals b.StudentCode into gc
                            where a.CardMacCode == mardMacCode
                            from gci in gc.DefaultIfEmpty()
                            select new StudentView
                            {
                                CardMacCode = a.CardMacCode,
                                StudentCode = a.StudentCode,
                                StudentName = gci == null ? string.Empty : gci.StudentName,
                                GradeName = gci == null ? string.Empty : gci.GradeName,
                                ClassName = gci == null ? string.Empty : gci.ClassName
                            };
                if (query.Any())
                {
                    entity = query.First();
                }
                IdentityVerificationFinish?.Invoke(entity);
            }
        }
    }
}
