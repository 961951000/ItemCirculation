﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace ItemCirculationManagementBackground.Properties {
    using System;
    
    
    /// <summary>
    ///   一个强类型的资源类，用于查找本地化的字符串等。
    /// </summary>
    // 此类是由 StronglyTypedResourceBuilder
    // 类通过类似于 ResGen 或 Visual Studio 的工具自动生成的。
    // 若要添加或移除成员，请编辑 .ResX 文件，然后重新运行 ResGen
    // (以 /str 作为命令选项)，或重新生成 VS 项目。
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   返回此类使用的缓存的 ResourceManager 实例。
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("ItemCirculationManagementBackground.Properties.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   使用此强类型资源类，为所有资源查找
        ///   重写当前线程的 CurrentUICulture 属性。
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   查找类似 操作失败！ 的本地化字符串。
        /// </summary>
        internal static string FailMessage {
            get {
                return ResourceManager.GetString("FailMessage", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 1 的本地化字符串。
        /// </summary>
        internal static string IsConvertTid {
            get {
                return ResourceManager.GetString("IsConvertTid", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 1 的本地化字符串。
        /// </summary>
        internal static string IsConvertUid {
            get {
                return ResourceManager.GetString("IsConvertUid", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 未选中任何数据！ 的本地化字符串。
        /// </summary>
        internal static string NoSelectedMessage {
            get {
                return ResourceManager.GetString("NoSelectedMessage", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 其它错误消息 的本地化字符串。
        /// </summary>
        internal static string OtherErrorMessage {
            get {
                return ResourceManager.GetString("OtherErrorMessage", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 当前操作存在风险，是否继续？ 的本地化字符串。
        /// </summary>
        internal static string RiskOperationConfimMessage {
            get {
                return ResourceManager.GetString("RiskOperationConfimMessage", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 操作成功！ 的本地化字符串。
        /// </summary>
        internal static string SuccecssMessage {
            get {
                return ResourceManager.GetString("SuccecssMessage", resourceCulture);
            }
        }
    }
}