using System.Data.Entity;
using LibraryManagementBackground.Models;

namespace ItemCirculationManagementBackground.DatabaseContext
{
    public class MySqlDbContext : DbContext
    {
        public MySqlDbContext() : base("name=DefaultConnection") { }

        public DbSet<TBook> Book { get; set; }
        public DbSet<LCirculation> Circulation { get; set; }
        public DbSet<TUser> User { get; set; }
    }
}
