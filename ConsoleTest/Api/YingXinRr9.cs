using System;
using System.Configuration;
using System.Text;
using ReaderA;

namespace ConsoleTest.Api
{
    public class YingXinRr9
    {
        /// <summary>
        /// 是否自动打开串口
        /// </summary>
        public bool AutoOpenComPort => Convert.ToBoolean(ConfigurationManager.AppSettings["AutoOpenComPort"]);

        /// <summary>
        /// 串口
        /// </summary>
        public int _comPort = -1;
        /// <summary>
        /// 读写器地址
        /// </summary>
        public byte _readerAddr = 0xff;
        /// <summary>
        /// 句柄
        /// </summary>
        public int _portIndex = -1;
        /// <summary>
        /// 打开串口
        /// </summary>
        /// <returns></returns>
        public bool OpenComPort()
        {
            int ret = 0x30;
            byte fbaud = 0;
            if (AutoOpenComPort)
            {
                ret = StaticClassReaderA.AutoOpenComPort(ref _comPort, ref _readerAddr, fbaud, ref _portIndex);
            }
            else
            {
                _comPort = Convert.ToInt32(ConfigurationManager.AppSettings["ComPort"]);
                for (int i = 0; i <= 3; i++)
                {
                    fbaud = Convert.ToByte(i);
                    ret = StaticClassReaderA.OpenComPort(_comPort, ref _readerAddr, fbaud, ref _portIndex);

                }
            }
            if (ret == 0)
            {
                return true;
            }
            else
            {
                Console.WriteLine(ret);
                return false;
            }
        }

        public bool Change14443()
        {
            var ret = StaticClassReaderA.ChangeToISO14443A(ref _readerAddr, _portIndex);
            if (ret == 0)
            {
                return true;
            }
            else
            {
                Console.WriteLine(ret);
                return false;
            }
        }

        public string GetHid()
        {
            byte[] sn = new byte[4];
            var ret = StaticClassReaderA.GetUIDofHID(ref _readerAddr, sn, _portIndex);
            if (ret == 0)
            {
                return ByteArrayToHexString(sn);
            }
            else
            {
                Console.WriteLine(ret);
                return string.Empty;
            }
        }
        private string ByteArrayToHexString(byte[] data)
        {
            StringBuilder sb = new StringBuilder(data.Length * 3);
            foreach (byte item in data)
            {
                sb.Append(Convert.ToString(item, 16).PadLeft(2, '0'));
            }
            return sb.ToString().ToUpper();
        }
    }
}
