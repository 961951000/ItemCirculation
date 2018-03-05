using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using ItemCirculation.Core.Api.ReaderA;
using ItemCirculation.Core.Shared;

namespace ItemCirculation.Core.Api
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
        public delegate void UidListenEventHandler(IEnumerable<string> uidList);
        /// <summary>
        /// FID电子标签监听线程
        /// </summary>
        private Thread _uidListen;
        /// <summary>
        /// FID电子标签监听任务是否正在执行
        /// </summary>
        private bool _uidListenIsRun;
        /// <summary>
        /// 监听线程关闭时长
        /// </summary>
        private const int ThreadJoin = 1000;
        /// <summary>
        /// 是否自动打开串口
        /// </summary>
        private bool _isAutoOpenComPort = true;
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

        public YingXinRr9() { }

        public YingXinRr9(int comPort)
        {
            _comPort = comPort;
            _isAutoOpenComPort = false;
        }

        /// <summary>
        /// 打开串口
        /// </summary>
        public bool OpenComPort()
        {
            int ret = 0x30;
            byte fbaud = 0; //用该值设置或更改串口通讯控件的波特率
            if (_isAutoOpenComPort)
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
            if (ret == 0x30 || ret == 0x35)//端口已经打开
            {
                CloseComPort();
                ret = 0x30;
                if (_isAutoOpenComPort)
                {
                    ret = StaticClassReaderA.AutoOpenComPort(ref _comPort, ref _readerAddr, fbaud, ref _portIndex); //自动连接串口
                }
                else
                {
                    for (int i = 0; i <= 3; i++)
                    {
                        fbaud = Convert.ToByte(i);
                        ret = StaticClassReaderA.OpenComPort(_comPort, ref _readerAddr, fbaud, ref _portIndex);
                        if (ret == 0)
                        {
                            break;
                        }
                    }
                }
            }
            if (ret == 0)
            {
                return true;
            }
            else
            {
                Logger.Error(GetReturnCodeMessage(ret));
                return false;
            }
        }
        public void CloseComPort()
        {
            if (_isAutoOpenComPort)
            {
                StaticClassReaderA.CloseComPort();
            }
            else
            {
                StaticClassReaderA.CloseSpecComPort(_portIndex);
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
                Logger.Error(GetReturnCodeMessage(ret));
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
                Logger.Error(GetReturnCodeMessage(ret));
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
                Logger.Error(GetReturnCodeMessage(ret));
                return false;
            }
        }

        /// <summary>
        /// 检查有效范围内是否有符合协议的电子标签存在。
        /// </summary>
        /// <param name="uidList">符合协议的电子标签序列号集合</param>
        public bool GetUidList(out IEnumerable<string> uidList)
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
                            uidList = Enumerable.Range(0, cardNumber).Select(i => str.Substring(18 * i, 18).Substring(2, 16));
                            return true;
                        }
                    }
                    break;
                default:
                    {
                        Logger.Error(GetReturnCodeMessage(ret));
                    }
                    break;
            }

            uidList = Enumerable.Empty<string>();
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
                    string hid = string.Empty;
                    if (GetHid(ref hid))
                    {
                        handler(hid);
                    }
                    Thread.Sleep(10);
                }
            });
            _hidListen.Start();
        }

        /// <summary>
        /// 停止14443A卡监听
        /// </summary>       
        public void StopHidListen()
        {
            _hidListenIsRun = false;
        }

        /// <summary>
        /// 关闭14443A卡监听
        /// </summary>       
        public void CloseHidListen()
        {
            _hidListenIsRun = false;
            if (_hidListen != null)
            {
                _hidListen.Join(ThreadJoin);
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
                    if (GetUidList(out IEnumerable<string> list))
                    {
                        handler(list);
                    }
                    Thread.Sleep(10);
                }
            });
            _uidListen.Start();
        }

        /// <summary>
        /// 停止RFID电子标签监听。
        /// </summary>
        public void StopUidListen()
        {
            _uidListenIsRun = false;
        }

        /// <summary>
        /// 关闭RFID电子标签监听。
        /// </summary>
        public void CloseUidListen()
        {
            _uidListenIsRun = false;
            if (_uidListen != null)
            {
                _uidListen.Join(ThreadJoin);
                while (_uidListen.ThreadState == ThreadState.Running)
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
        private static string ByteArrayToHexString(byte[] data)
        {
            return BitConverter.ToString(data).Replace("-", "");
        }

        /// <summary>
        /// ID卡前10位
        /// </summary>
        /// <param name="data">字节数组</param>
        /// <returns>十进制字符串</returns>
        private static string ByteArrayToString(byte[] data)
        {
            return BitConverter.ToUInt32(data, 0).ToString();
        }

        /// <summary>  
        /// 把int32类型的数据转存到4个字节的byte数组中  
        /// </summary>  
        /// <param name="data">int32类型的数据</param>  
        /// <returns>4个字节大小的byte数组</returns>  
        private static byte[] StringToByteArray(string data)
        {
            uint m = Convert.ToUInt32(data);
            byte[] array = {
                (byte)(m & 0xFF),
                (byte)((m & 0xFF00) >> 8),
                (byte)((m & 0xFF0000) >> 16),
                (byte)((m >> 24) & 0xFF)
            };
            return array;
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
