using System.Data.Entity;
using ItemCirculation.Data.Models;

namespace ItemCirculation.Data.DatabaseContext
{
    public class MySqlDbContext : DbContext
    {
        public MySqlDbContext() : base("name=DefaultConnection") { }

        /// <summary>
        /// 操作信息表
        /// </summary>
        public DbSet<Models.Action> Action { get; set; }

        /// <summary>
        /// 操作类型表
        /// </summary>
        public DbSet<ActionType> ActionType { get; set; }

        /// <summary>
        /// 流通信息表
        /// </summary>
        public DbSet<Circulation> Circulation { get; set; }

        /// <summary>
        /// 流通记录表
        /// </summary>
        public DbSet<CirculationRecord> CirculationRecord { get; set; }

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
