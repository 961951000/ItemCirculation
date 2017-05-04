using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Models;

namespace ItemCirculation.Service
{
    public class ItemService
    {
        /// <summary>
        /// 根据RFID标签序列号获取物品信息
        /// </summary>
        /// <param name="uidList">RFID标签序列号集合</param>
        /// <returns>物品集合</returns>
        public List<Item> QueryList(List<string> uidList)
        {
            List<Item> list;
            using (var db = new MySqlDbContext())
            {
                list=(from uid in uidList select db.Item.Where(x => x.Uid == uid) into query where query.Any() select query.First()).OrderBy(x=>x.Uid).ToList();
            }
            return list;
        }
    }
}
