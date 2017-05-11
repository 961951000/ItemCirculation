using System.Data.Entity;
using LibraryManagementBackground.Models;

namespace ItemCirculationManagementBackground.DatabaseContext
{
    public class MsSqlDbContext : DbContext
    {
        public MsSqlDbContext() : base("name=MsSqlDbContext") { }

        public DbSet<TBook> Book { get; set; }
        public DbSet<LCirculation> Circulation { get; set; }
        public DbSet<TUser> User { get; set; }
    }
}
