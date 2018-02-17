using Microsoft.VisualStudio.TestTools.UnitTesting;
using ItemCirculation.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ItemCirculation.Data.Models;

namespace ItemCirculation.Service.Tests
{
    [TestClass()]
    public class CirculationRecordServiceTests
    {
        private readonly CirculationRecordService _circulationRecordService = new CirculationRecordService();

        [TestMethod()]
        public void LoanItemTest()
        {
            var uidList = new List<string>()
            {
                "34605070500104E0",
                "20E65070500104E0",
                "5E095170500104E0",
                "76805070500104E0",
                "76805070500104E076805070500104E0"
            };
            var student = new Student
            {
                CardMacCode = "3101120020120130322"
            };
            var result = _circulationRecordService.LoanItem(uidList, student);

            Assert.AreEqual(uidList.Count, result.Count);
        }

        [TestMethod()]
        public void ReturnItemTest()
        {
            var uidList = new List<string>()
            {
                "34605070500104E0",
                "20E65070500104E0",
                "5E095170500104E0",
                "76805070500104E0",
                "76805070500104E076805070500104E0"
            };
            var student = new Student
            {
                CardMacCode = "3101120020120130322"
            };
            var result = _circulationRecordService.ReturnItem(uidList, student);

            Assert.AreEqual(uidList.Count, result.Count);
        }
    }
}