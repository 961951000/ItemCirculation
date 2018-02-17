using System;
using System.Collections.Generic;
using System.Linq;
using ItemCirculation.Data.DatabaseContext;
using ItemCirculation.Data.Enum;
using ItemCirculation.Data.Models;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Service
{
    public class CirculationRecordService
    {
        /// <summary>
        ///物品领用
        /// </summary>
        /// <param name="uidList">RFID标签序列号集合</param>
        /// <param name="student">用户</param>
        /// <returns>操作结果</returns>
        public List<CirculationView> LoanItem(IEnumerable<string> uidList, Student student)
        {
            var list = new List<CirculationView>();
            using (var db = new MySqlDbContext())
            {
                foreach (var uid in uidList)
                {
                    var item = db.Item.FirstOrDefault(x => x.Uid == uid);
                    var circulationRecord = new CirculationRecord
                    {
                        ItemUid = uid,
                        StudentCardMacCode = student.CardMacCode,
                        ActionTime = DateTime.Now
                    };
                    var entity = new CirculationView
                    {
                        Uid = uid,
                    };

                    if (item == null)
                    {
                        circulationRecord.ActionId = db.Action.Join(db.ActionType, x => x.ActionTypeId, y => y.Id, (x, y) => new { x.Id, x.ActionCode, y.ActionTypeCode }).Single(x => x.ActionCode == Data.Enum.Action.异常借出.GetHashCode() && x.ActionTypeCode == Data.Enum.ActionType.未知设备.GetHashCode()).Id;
                    }
                    else
                    {
                        entity.ItemNumber = item.ItemNumber;
                        entity.ItemName = item.ItemName;
                        entity.ItemType = item.ItemType;
                        entity.ItemStateCode = item.ItemStateCode;
                        entity.ExecuteResult = item.ItemStateCode == ItemStateEnum.在馆.GetHashCode();

                        circulationRecord.ActionId = entity.ExecuteResult ? db.Action.Single(x => x.ActionCode == Data.Enum.Action.正常借出.GetHashCode()).Id : db.Action.Join(db.ActionType, x => x.ActionTypeId, y => y.Id, (x, y) => new { x.Id, x.ActionCode, y.ActionTypeCode }).Single(x => x.ActionCode == Data.Enum.Action.异常借出.GetHashCode() && x.ActionTypeCode == Data.Enum.ActionType.重复借出.GetHashCode()).Id;
                        item.ItemStateCode = ItemStateEnum.外借.GetHashCode();
                    }
                    db.CirculationRecord.Add(circulationRecord);
                    db.SaveChanges();
                    list.Add(entity);
                }
            }

            return list;
        }

        /// <summary>
        ///物品归还
        /// </summary>
        /// <param name="uidList">RFID标签序列号集合</param>
        /// <param name="student">用户</param>
        /// <returns>操作结果</returns>
        public List<CirculationView> ReturnItem(IEnumerable<string> uidList, Student student)
        {
            var list = new List<CirculationView>();
            using (var db = new MySqlDbContext())
            {
                foreach (var uid in uidList)
                {
                    var item = db.Item.FirstOrDefault(x => x.Uid == uid);
                    var circulationRecordEntity = new CirculationRecord
                    {
                        ItemUid = uid,
                        StudentCardMacCode = student.CardMacCode,
                        ActionTime = DateTime.Now
                    };
                    var entity = new CirculationView
                    {
                        Uid = uid
                    };

                    if (item == null)
                    {
                        circulationRecordEntity.ActionId = db.Action.Join(db.ActionType, x => x.ActionTypeId, y => y.Id, (x, y) => new { x.Id, x.ActionCode, y.ActionTypeCode }).Single(x => x.ActionCode == Data.Enum.Action.异常归还.GetHashCode() && x.ActionTypeCode == Data.Enum.ActionType.未知设备.GetHashCode()).Id;
                    }
                    else
                    {
                        entity.ItemNumber = item.ItemNumber;
                        entity.ItemName = item.ItemName;
                        entity.ItemType = item.ItemType;
                        entity.ItemStateCode = item.ItemStateCode;

                        entity.ExecuteResult = item.ItemStateCode == ItemStateEnum.外借.GetHashCode();
                        circulationRecordEntity.ActionId = entity.ExecuteResult ? db.Action.Single(x => x.ActionCode == Data.Enum.Action.正常归还.GetHashCode()).Id : db.Action.Join(db.ActionType, x => x.ActionTypeId, y => y.Id, (x, y) => new { x.Id, x.ActionCode, y.ActionTypeCode }).Single(x => x.ActionCode == Data.Enum.Action.异常归还.GetHashCode() && x.ActionTypeCode == Data.Enum.ActionType.重复归还.GetHashCode()).Id;
                        item.ItemStateCode = ItemStateEnum.在馆.GetHashCode();
                    }
                    db.CirculationRecord.Add(circulationRecordEntity);
                    db.SaveChanges();
                    list.Add(entity);
                }
            }

            return list;
        }
    }
}
