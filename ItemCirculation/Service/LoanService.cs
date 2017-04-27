using System;
using System.Collections.Generic;
using System.Linq;
using ItemCirculation.DatabaseContext;
using ItemCirculation.Event;
using ItemCirculation.Models;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Service
{
    public class LoanService : CirculationService
    {
        /// <summary>
        /// 借出业务
        /// </summary>
        /// <param name="items">物品列表</param>
        /// <param name="student">用户</param>
        /// <returns>操作结果</returns>
        public List<CirculationView> Circulation(List<Item> items, Student student)
        {
            var listen = new ListenEvent();
            listen.RfidRun();
            return Circulation(items, student, true);
        }
    }
}
