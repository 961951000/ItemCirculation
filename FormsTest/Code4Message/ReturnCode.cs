namespace FormsTest.Code4Message
{
    public class ReturnCode
    {
        /// <summary>
        /// 操作成功
        /// </summary>
        public const byte Success = 0x00;
        /// <summary>
        /// 命令操作数长度错误
        /// </summary>
        public const byte LengthError = 0x01;
        /// <summary>
        /// 操作命令不支持
        /// </summary>
        public const byte OperationNotSupport = 0x02;
        /// <summary>
        /// 操作数范围不符
        /// </summary>
        public const byte DataRangError = 0x03;
        /// <summary>
        /// 操作命令当前无法执行
        /// </summary>
        public const byte CmdNotOperation = 0x04;
        /// <summary>
        /// 感应场处于关闭状态
        /// </summary>
        public const byte RfClosed = 0x05;
        /// <summary>
        /// EEPROM操作出错
        /// </summary>
        public const byte Eeprom = 0x06;
        /// <summary>
        /// 指定的Inventory-Scan-Time溢出
        /// </summary>
        public const byte TimeOut = 0x0a;
        /// <summary>
        /// 在Inventory-Scan-Time时间内无得到所有电子标签的UID
        /// </summary>
        public const byte MoreUid = 0x0b;
        /// <summary>
        /// ISO 错误
        /// </summary>
        public const byte IsoError = 0x0c;
        /// <summary>
        /// 无电子标签可操作
        /// </summary>
        public const byte NoElectronicTag = 0x0e;
        /// <summary>
        /// 操作出错
        /// </summary>
        public const byte OperationError = 0x0f;
        /// <summary>
        /// 命令不被支持
        /// </summary>
        public const byte CmdNotSupport = 0x01;
        /// <summary>
        /// 命令不被识别
        /// </summary>
        public const byte CmdNotIdentify = 0x02;
        /// <summary>
        /// 该操作不被支持
        /// </summary>
        public const byte ErrOperationNotSupport = 0x03;
        /// <summary>
        /// 未知的错误类型
        /// </summary>
        public const byte UnknownError = 0x0f;
        /// <summary>
        /// 所指定的操作块不能被使用或不存在
        /// </summary>
        public const byte BlockError = 0x10;
        /// <summary>
        /// 所指定的操作块已经被锁定，不能再次被锁定
        /// </summary>
        public const byte BlockLockedCntLock = 0x11;
        /// <summary>
        /// 所指定的操作块已经被锁定，不能对其内容进行改写
        /// </summary>
        public const byte BlockLockedCntWrite = 0x12;
        /// <summary>
        /// 所指定的操作块不能被正常操作
        /// </summary>
        public const byte BlockCntOperate = 0x13;
        /// <summary>
        /// 所指定的操作块不能被正常锁定
        /// </summary>
        public const byte BlockCntLock = 0x14;
        /// <summary>
        /// 通讯错误
        /// </summary>
        public const byte CommunicationErr = 0x30;
        /// <summary>
        /// CRC校验错误
        /// </summary>
        public const byte RetCrcErr = 0x31;
        public const byte RetDataErr = 0x32;
        /// <summary>
        /// 通讯繁忙，设备正在执行其他指令
        /// </summary>
        public const byte CommunicationBusy = 0x33;
        public const byte ExecuteCmdBusy = 0x34;
        /// <summary>
        /// 端口已打开
        /// </summary>
        public const byte ComPortOpened = 0x35;
        /// <summary>
        /// 端口已关闭
        /// </summary>
        public const byte ComPortClose = 0x36;
        /// <summary>
        /// 无效的句柄
        /// </summary>
        public const byte InvalidHandle = 0x37;
        /// <summary>
        /// 无效的端口
        /// </summary>
        public const byte InvalidPort = 0x38;
    }
}
