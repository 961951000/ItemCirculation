using System.Collections.Generic;
using System.Linq;
using ItemCirculation.Data.DatabaseContext;
using ItemCirculation.Data.Models;

namespace ItemCirculationV2.Service
{
    public class ItemService
    {
        /// <summary>
        /// 根据RFID标签序列号获取物品信息
        /// </summary>
        /// <param name="uidList">RFID标签序列号集合</param>
        /// <returns>物品集合</returns>
        public IEnumerable<Item> QueryList(IEnumerable<string> uidList)
        {
            using (var db = new MySqlDbContext())
            {
                return uidList.Select(uid => db.Item.FirstOrDefault(x => x.Uid == uid) ?? new Item { Uid = uid });
            }
        }
    }
}
