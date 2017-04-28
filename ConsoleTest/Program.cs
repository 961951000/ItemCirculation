using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
            rr9.Change14443();
            Console.WriteLine(rr9.AutoOpenComPort);
            Console.WriteLine(rr9._comPort);
            Console.WriteLine(rr9.GetHid());
            Console.ReadLine();
        }
    }
}
