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
            //var listen = new ListenEvent();
            //listen.RfidRun();
            return Circulation(items, student, true);
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
                        if (item.ItemStateCode == 1001)
                        {
                            db.Item.Attach(item);
                            item.ItemStateCode = 1002;
                            var circulation = new Circulation
                            {
                                ItemId = item.Id,
                                LoanStudentId = student.Id,
                                LoanTime = DateTime.Now,
                                IsReturn = 0
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
                        if (item.ItemStateCode != 1002)
                        {
                            db.Item.Attach(item);
                            item.ItemStateCode = 1001;
                            var circulation = db.Circulation.Single(x => x.ItemId == item.Id);
                            circulation.ReturnStudentId = student.Id;
                            circulation.ReturnTime = DateTime.Now;
                            circulation.IsReturn = 1;
                            db.SaveChanges();
                            entity.ExecuteResult = true;
                        }
                        list.Add(entity);
                    }
                }
                return list;
            }
        }
    }
}
