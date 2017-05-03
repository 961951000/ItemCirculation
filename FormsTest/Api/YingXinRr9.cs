using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Threading;
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
            if (ret == 0x30 || ret == 0x35)//端口已经打开
            {
                CloseComPort();
                ret = 0x30;
                if (_autoOpenComPort)
                {
                    ret = StaticClassReaderA.AutoOpenComPort(ref _comPort, ref _readerAddr, fbaud, ref _portIndex); //自动连接串口
                }
                else
                {
                    for (int i = 0; i <= 3; i++)
                    {
                        fbaud = Convert.ToByte(i);
                        ret = StaticClassReaderA.OpenComPort(_comPort, ref _readerAddr, fbaud, ref _portIndex);
                    }
                }
            }
            if (ret == 0)
            {
                return true;
            }
            else
            {
                Console.WriteLine(GetReturnCodeMessage(ret));
                return false;
            }
        }

        public void CloseComPort()
        {
            StaticClassReaderA.CloseSpecComPort(_portIndex);
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
                Console.WriteLine(GetReturnCodeMessage(ret));
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
                Console.WriteLine(GetReturnCodeMessage(ret));
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
                Console.WriteLine(GetReturnCodeMessage(ret));
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
                        Console.WriteLine(GetReturnCodeMessage(ret));
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
                        Console.WriteLine(GetReturnCodeMessage(ret));
                    }
                }
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
                _hidListen.Join(1000);
                if (_hidListen.ThreadState == ThreadState.Running)
                {
                    _hidListen.Abort();
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
                                Console.WriteLine(GetReturnCodeMessage(ret));
                            }
                            break;
                    }
                    handler(list);
                }
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
                _uidListen.Join(1000);
                if (_uidListen.ThreadState == ThreadState.Running)
                {
                    _uidListen.Abort();
                }
            }
        }

        /// <summary>
        /// 字节数组转十六进制字符串
        /// </summary>
        /// <param name="data">字节数组</param>
        /// <returns>十六进制字符串</returns>
        private string ByteArrayToHexString(params byte[] data)

        {
            StringBuilder sb = new StringBuilder(data.Length * 3);
            foreach (byte item in data)
            {
                sb.Append(Convert.ToString(item, 16).PadLeft(2, '0'));
            }
            return sb.ToString().ToUpper();
        }
        private static string GetReturnCodeMessage(int cmdRet)
        {
            switch (cmdRet)
            {
                case ReturnCode.Success:
                    return "操作成功";
                case ReturnCode.LengthError:
                    return "命令操作数长度错误";
                case ReturnCode.OperationNotSupport:
                    return "操作命令不支持";
                case ReturnCode.DataRangError:
                    return "操作数范围不符";
                case ReturnCode.CmdNotOperation:
                    return "操作命令当前无法执行";
                case ReturnCode.RfClosed:
                    return "感应场处于关闭状态";
                case ReturnCode.Eeprom:
                    return "EEPROM操作出错";
                case ReturnCode.TimeOut:
                    return "指定的Inventory-Scan-Time溢出";
                case ReturnCode.MoreUid:
                    return "在Inventory-Scan-Time时间内无得到所有电子标签的UID";
                case ReturnCode.IsoError:
                    return "ISO 错误";
                case ReturnCode.NoElectronicTag:
                    return "无电子标签可操作";
                case ReturnCode.OperationError:
                    return "操作出错";
                case ReturnCode.CommunicationErr:
                    return "通讯错误";
                case ReturnCode.RetCrcErr:
                    return "CRC校验错误";
                case ReturnCode.CommunicationBusy:
                    return "通讯繁忙，设备正在执行其他指令";
                case ReturnCode.ComPortOpened:
                    return "端口已打开";
                case ReturnCode.ComPortClose:
                    return "端口已关闭";
                case ReturnCode.InvalidHandle:
                    return "无效的句柄";
                case ReturnCode.InvalidPort:
                    return "无效的端口";

                default:
                    return cmdRet.ToString();
            }
        }

        private static string GetErrorCodeMessage(byte errorCode)
        {
            switch (errorCode)
            {
                case ReturnCode.CmdNotSupport:
                    return "命令不被支持";
                case ReturnCode.CmdNotIdentify:
                    return "命令不被识别";
                case ReturnCode.ErrOperationNotSupport:
                    return "该操作不被支持";
                case ReturnCode.UnknownError:
                    return "未知的错误类型";
                case ReturnCode.BlockError:
                    return "所指定的操作块不能被使用或不存在";
                case ReturnCode.BlockLockedCntLock:
                    return "所指定的操作块已经被锁定，不能再次被锁定";
                case ReturnCode.BlockLockedCntWrite:
                    return "所指定的操作块已经被锁定，不能对其内容进行改写";
                case ReturnCode.BlockCntOperate:
                    return "所指定的操作块不能被正常操作";
                case ReturnCode.BlockCntLock:
                    return "所指定的操作块不能被正常锁定";
                default:
                    return errorCode.ToString();
            }
        }
    }
}
