using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ItemCirculation.Data.Enum
{
    public enum ActionType
    {
        重复借出 = 1001,
        重复归还 = 1002,
        第三人归还 = 1003,
        未知设备 = 1004,
        未知学生 = 1005,
        未知错误 = 1006
    }
}
