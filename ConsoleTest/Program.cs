using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using ConsoleTest.Api;

namespace ConsoleTest
{
    class Program
    {
        static void Main(string[] args)
        {
            var rr9 = new YingXinRr9();
            rr9.OpenComPort();
            rr9.Change15693();
            rr9.StartUidListen(aaa);
            Console.WriteLine("END");
            Console.ReadLine();
        }

        public static void aaa(List<string> uidList)
        {
            foreach (var item in uidList)
            {
                Console.WriteLine(item);
                Console.WriteLine(DateTime.Now);
            }
        }
    }
}
