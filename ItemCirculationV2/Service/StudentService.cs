using System.Linq;
using ItemCirculation.Data.DatabaseContext;
using ItemCirculation.Data.Models;

namespace ItemCirculationV2.Service
{
    public class StudentService
    {
        /// <summary>
        /// 身份验证
        /// </summary>
        /// <param name="cardMacCode">读者卡号</param>
        /// <returns>读者信息</returns>
        public Student IdentityVerification(string cardMacCode)
        {
            using (var db = new MySqlDbContext())
            {
                return db.Student.FirstOrDefault(x => x.CardMacCode == cardMacCode) ?? new Student { CardMacCode = cardMacCode };
            }
        }
    }
}
