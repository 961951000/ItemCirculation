using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ItemCirculation.Models;

namespace ItemCirculation.DatabaseContext
{
    public class MySqlDbContext : DbContext
    {
        public MySqlDbContext() : base("name=DefaultConnection") { }
        /// <summary>
        /// 流通信息表
        /// </summary>
        public DbSet<Circulation> Circulation { get; set; }
        /// <summary>
        /// 物品信息表
        /// </summary>
        public DbSet<Item> Item { get; set; }
        /// <summary>
        /// 物品状态表
        /// </summary>
        public DbSet<ItemState> ItemState { get; set; }
        /// <summary>
        /// 学生信息表
        /// </summary>
        public DbSet<Student> Student { get; set; }
    }
}
