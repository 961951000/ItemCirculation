namespace ItemCirculation.Data.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<ItemCirculation.Data.DatabaseContext.MySqlDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            ContextKey = "ItemCirculation.Data.DatabaseContext.MySqlDbContext";
        }

        protected override void Seed(ItemCirculation.Data.DatabaseContext.MySqlDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.
        }
    }
}
