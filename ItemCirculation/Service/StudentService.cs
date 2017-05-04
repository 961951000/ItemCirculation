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
                Student entity = null;
                var schoolCardQueryable = db.SchoolCard.Where(x => x.CardMacCode == cardMacCode);
                if (schoolCardQueryable.Any())
                {
                    var studentCode = schoolCardQueryable.First().StudentCode;
                    var query = db.Student.Where(x => x.StudentCode == studentCode);
                    if (query.Any())
                    {
                        entity = query.First();
                    }
                }
                return entity;
            }
        }
    }
}
