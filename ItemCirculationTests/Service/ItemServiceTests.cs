using Microsoft.VisualStudio.TestTools.UnitTesting;
using ItemCirculation.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemCirculation.Service.Tests
{
    [TestClass()]
    public class ItemServiceTests
    {
        private readonly ItemService _itemService = new ItemService();

        [TestMethod()]
        public void QueryListTest()
        {
            var uidList = new List<string>()
            {
                "34605070500104E0",
                "20E65070500104E0",
                "5E095170500104E0",
                "76805070500104E0",
                "76805070500104E076805070500104E0"
            };
            var items = _itemService.QueryList(uidList);

            Assert.AreEqual(uidList.Count, items.Count());
        }
    }
}