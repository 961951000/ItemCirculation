using System.Collections.Generic;
using ItemCirculation.Models;
using ItemCirculation.ViewModels;

namespace ItemCirculation.Service
{
    public class ReturnService : CirculationService
    {
        /// <summary>
        /// 归还业务
        /// </summary>
        /// <param name="items">物品列表</param>
        /// <param name="student">用户</param>
        /// <returns>操作结果</returns>
        public List<CirculationView> Circulation(List<Item> items, Student student)
        {
            return Circulation(items, student, false);
        }
    }
}
