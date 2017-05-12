using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Models;

namespace ItemCirculation.Service
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
                var query = db.Student.Where(x => x.CardMacCode == cardMacCode);
                return query.Any() ? query.First() : null;
            }
        }
    }
}
