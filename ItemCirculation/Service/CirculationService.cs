using System;
using System.Collections.Generic;
using System.Linq;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Models;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Service
{
    public class CirculationService
    {
        /// <summary>
        ///物品领用
        /// </summary>
        /// <param name="items">物品列表</param>
        /// <param name="student">用户</param>
        /// <returns>操作结果</returns>
        public List<CirculationView> LoanItem(List<Item> items, Student student)
        {
            return Circulation(items, student, true);
        }
        /// <summary>
        ///物品归还
        /// </summary>
        /// <param name="items">物品列表</param>
        /// <param name="student">用户</param>
        /// <returns>操作结果</returns>
        public List<CirculationView> ReturnItem(List<Item> items, Student student)
        {
            return Circulation(items, student, false);
        }
        /// <summary>
        /// 流通业务
        /// </summary>
        /// <param name="items">物品列表</param>
        /// <param name="student">用户</param>
        /// <param name="circulationTtype">
        /// 流通类型
        /// true/借出
        /// false/归还
        /// </param>
        /// <returns>操作结果</returns>
        public static List<CirculationView> Circulation(List<Item> items, Student student, bool circulationTtype)
        {
            var list = new List<CirculationView>();
            using (var db = new MySqlDbContext())
            {
                var currentTime = DateTime.Now;
                if (circulationTtype)
                {
                    foreach (var item in items)
                    {
                        var entity = new CirculationView
                        {
                            Uid = item.Uid,
                            ItemNumber = item.ItemNumber,
                            ItemName = item.ItemName,
                            ItemType = item.ItemType,
                            ItemStateCode = item.ItemStateCode,
                            ExecuteResult = false
                        };
                        var item1 = db.Item.Single(x => x.Id == item.Id);
                        if (item1.ItemStateCode == 1001)
                        {
                            item1.ItemStateCode = 1002;
                            //db.Item.Attach(item);
                            var circulation = new Circulation
                            {
                                ItemId = item1.Id,
                                LoanStudentId = student.Id,
                                LoanTime = currentTime,
                                IsReturn = false
                            };
                            db.Circulation.Add(circulation);
                            db.SaveChanges();
                            entity.ExecuteResult = true;
                        }
                        list.Add(entity);
                    }
                }
                else
                {
                    foreach (var item in items)
                    {
                        var entity = new CirculationView
                        {
                            Uid = item.Uid,
                            ItemNumber = item.ItemNumber,
                            ItemName = item.ItemName,
                            ItemType = item.ItemType,
                            ItemStateCode = item.ItemStateCode,
                            ExecuteResult = false
                        };
                        var item1 = db.Item.Single(x => x.Id == item.Id);
                        if (item1.ItemStateCode == 1002)
                        {
                            item1.ItemStateCode = 1001;
                            var query1 = db.Circulation.Where(x => x.ItemId == item1.Id && x.IsReturn == false);
                            if (query1.Any())
                            {
                                var circulation = query1.First();
                                circulation.ReturnStudentId = student.Id;
                                circulation.ReturnTime = currentTime;
                                circulation.IsReturn = true;
                                db.SaveChanges();
                                entity.ExecuteResult = true;
                            }
                        }
                        list.Add(entity);
                    }
                }
                return list;

            }
        }
        /*using (TransactionScope scope = new TransactionScope())
           {
               //Do something with context1  
               //Do something with context2  

               //Save Changes but don't discard yet  
               context1.SaveChanges(false);

               //Save Changes but don't discard yet  
               context2.SaveChanges(false);

               //if we get here things are looking good.  
               scope.Complete();
               context1.AcceptAllChanges();
               context2.AcceptAllChanges();

           }*/
    }
}
