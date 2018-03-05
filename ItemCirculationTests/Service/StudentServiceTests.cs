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
    public class StudentServiceTests
    {
        private readonly StudentService _studentService = new StudentService();
        
        [TestMethod()]
        public void IdentityVerificationTest()
        {
            var student = _studentService.IdentityVerification("3101120020120130322");
            Assert.IsInstanceOfType(student,typeof(Student));
        }
    }
}