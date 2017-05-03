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
            //var rr9 = new YingXinRr9();
            //rr9.OpenComPort();
            //rr9.Change15693();
            //rr9.StartUidListen(aaa);
            int ts = 1092447868;
            int a = ts % (256 * 256) + (int)ts / (256 * 256) % 256 * 100000;
            Console.WriteLine(ts.ToString("X2"));
            Console.WriteLine("END");
            Console.ReadLine();
        }
        /// <summary>  
/// 根据GUID获取19位的唯一数字序列  
/// </summary>  
/// <returns></returns>  
public static long GuidToLongID()  
{  
    byte[] buffer = Guid.NewGuid().ToByteArray();  
    return BitConverter.ToInt64(buffer, 0);  
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
