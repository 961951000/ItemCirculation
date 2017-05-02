using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using ReaderA;

namespace FormsTest.Api
{
    public class YingXinRr9
    {
        /// <summary>
        /// 轮训委托
        /// </summary>
        /// <param name="hid">14443A卡监听事件处理程序</param>
        public delegate void HidListenEventHandler(string hid);
        /// <summary>
        /// 14443A卡监听线程
        /// </summary>
        private Thread _hidListen;
        /// <summary>
        /// 14443A卡监听任务是否正在执行
        /// </summary>
        private bool _hidListenIsRun;

        /// <summary>
        /// 轮训委托
        /// </summary>
        /// <param name="uidList">RFID电子标签监听事件处理程序</param>
        public delegate void UidListenEventHandler(List<string> uidList);
        /// <summary>
        /// FID电子标签监听线程
        /// </summary>
        private Thread _uidListen;
        /// <summary>
        /// FID电子标签监听任务是否正在执行
        /// </summary>
        private bool _uidListenIsRun;
        /// <summary>
        /// 是否自动打开串口
        /// </summary>
        private bool _autoOpenComPort;

        /// <summary>
        /// COM1—COM12与读写器连接的串口号。
        /// </summary>
        private int _comPort = -1;
        /// <summary>
        /// 读写器的地址。
        /// </summary>
        private byte _readerAddr = 0xff;
        /// <summary>
        /// 与读写器连接端口对应的句柄，应用程序通过该句柄可以操作连接在相应端口的读写器。如果打开不成功，返回的句柄值为－1。
        /// </summary>
        private int _portIndex = -1;

        /// <summary>
        /// 打开串口
        /// </summary>
        public bool OpenComPort()
        {
            int ret = 0x30;
            byte fbaud = 0; //用该值设置或更改串口通讯控件的波特率
            _autoOpenComPort = Convert.ToBoolean(ConfigurationManager.AppSettings["AutoOpenComPort"]);
            if (_autoOpenComPort)
            {
                ret = StaticClassReaderA.AutoOpenComPort(ref _comPort, ref _readerAddr, fbaud, ref _portIndex); //自动连接串口
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

        public bool CloseComPort()
        {
            int ret = 0x30;
            ret = StaticClassReaderA.CloseSpecComPort(_portIndex);
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
        /// <summary>
        /// 设置读写器为ISO15693模式。
        /// </summary>
        public bool Change15693()
        {
            int ret = 0x30;
            ret = StaticClassReaderA.ChangeToISO15693(ref _readerAddr, _portIndex);
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

        /// <summary>
        /// 设置读写器为ISO14443A模式。
        /// </summary>
        public bool Change14443()
        {
            int ret = 0x30;
            ret = StaticClassReaderA.ChangeToISO14443A(ref _readerAddr, _portIndex);
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

        /// <summary>
        /// 读取有效范围内14443A卡的序列号。
        /// </summary>
        /// <param name="hid">14443A卡的序列号。</param>
        /// 
        public bool GetHid(ref string hid)
        {
            int ret = 0x30;
            byte[] sn = new byte[4];
            ret = StaticClassReaderA.GetUIDofHID(ref _readerAddr, sn, _portIndex);
            if (ret == 0)
            {
                hid = ByteArrayToHexString(sn);
                return true;
            }
            else
            {
                Console.WriteLine(ret);
                return false;
            }
        }

        /// <summary>
        /// 检查有效范围内是否有符合协议的电子标签存在。
        /// </summary>
        /// <param name="uidList">符合协议的电子标签序列号集合</param>
        public bool GetUidList(ref List<string> uidList)
        {
            int ret = 0x30;
            byte state = 6; //默认不带AFI的InventoryScan
            byte afi = 0;   //当查询命令为Selected模式时，需要输入电子标签的AFI数值。
            byte[] dsfidAndUid = new byte[2300];    //指向输出数组变量，每个数组单元为9个字节，包括8个字节的UID和1个字节的DSFID信息。数组中的有效数据总量为CardNum*9个字节。
            byte cardNumber = 0; //电子标签的张数。
            ret = StaticClassReaderA.Inventory(ref _readerAddr, ref state, ref afi, dsfidAndUid, ref cardNumber, _portIndex);
            switch (ret)
            {
                case 0x0A:
                case 0x0B:
                case 0x0E:
                    {
                        Array.Resize(ref dsfidAndUid, cardNumber * 9);
                        string str = ByteArrayToHexString(dsfidAndUid);
                        if (ret == 0x0E || ret == 0x0B)
                        {
                            for (int i = 0; i < cardNumber; i++)
                            {
                                uidList.Add(str.Substring(18 * i, 18).Substring(2, 16));
                            }
                            return true;
                        }
                    }
                    break;
                default:
                    {
                        Console.WriteLine(ret);
                    }
                    break;
            }
            return false;
        }

        /// <summary>
        /// 开始14443A卡监听
        /// </summary>
        /// <param name="handler">处理程序</param>
        /// <returns></returns>
        public void StartHidListen(HidListenEventHandler handler)
        {
            if (_hidListenIsRun) return;
            _hidListenIsRun = true;
            _hidListen = new Thread(() =>
            {
                while (_hidListenIsRun)
                {
                    int ret = 0x30;
                    byte[] sn = new byte[4];
                    ret = StaticClassReaderA.GetUIDofHID(ref _readerAddr, sn, _portIndex);
                    if (ret == 0)
                    {
                        handler(ByteArrayToHexString(sn));
                    }
                    else
                    {
                        Console.WriteLine(ret);
                    }
                }
                _hidListenIsRun = false;
            });
            _hidListen.Start();
        }

        /// <summary>
        /// 结束14443A卡监听
        /// </summary>       
        public void StopHidListen()
        {
            _hidListenIsRun = false;
            if (_hidListen != null)
            {
                while (_hidListen.ThreadState == ThreadState.Running)
                {

                }
            }
        }

        /// <summary>
        /// 开始RFID电子标签监听
        /// </summary>
        /// <param name="handler">处理程序</param>
        public void StartUidListen(UidListenEventHandler handler)
        {
            if (_uidListenIsRun) return;
            _uidListenIsRun = true;
            _uidListen = new Thread(() =>
            {
                while (_uidListenIsRun)
                {
                    int ret = 0x30;
                    byte state = 6; //默认不带AFI的InventoryScan
                    byte afi = 0;   //当查询命令为Selected模式时，需要输入电子标签的AFI数值。
                    byte[] dsfidAndUid = new byte[2300];    //指向输出数组变量，每个数组单元为9个字节，包括8个字节的UID和1个字节的DSFID信息。数组中的有效数据总量为CardNum*9个字节。
                    byte cardNumber = 0; //电子标签的张数。
                    List<string> list = new List<string>();
                    ret = StaticClassReaderA.Inventory(ref _readerAddr, ref state, ref afi, dsfidAndUid, ref cardNumber, _portIndex);
                    switch (ret)
                    {
                        case 0x0A:
                        case 0x0B:
                        case 0x0E:
                            {
                                Array.Resize(ref dsfidAndUid, cardNumber * 9);
                                string str = ByteArrayToHexString(dsfidAndUid);
                                if (ret == 0x0E || ret == 0x0B)
                                {
                                    for (int i = 0; i < cardNumber; i++)
                                    {
                                        list.Add(str.Substring(18 * i, 18).Substring(2, 16));
                                    }
                                }
                            }
                            break;
                        default:
                            {
                                Console.WriteLine(ret);
                            }
                            break;
                    }
                    handler(list);
                }
                _uidListenIsRun = false;
            });
            _uidListen.Start();
        }

        /// <summary>
        /// 结束RFID电子标签监听。
        /// </summary>
        public void StopUidListen()
        {
            _uidListenIsRun = false;
            if (_uidListen != null)
            {
                while (_uidListen.ThreadState == ThreadState.Running)
                {

                }
            }
        }

        /// <summary>
        /// 字节数组转十六进制字符串
        /// </summary>
        /// <param name="data">字节数组</param>
        /// <returns>十六进制字符串</returns>
        private static string ByteArrayToHexString(params byte[] data)

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
