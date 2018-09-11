namespace ItemCirculation.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.machine_type",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        type_name = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            AddColumn("dbo.item", "machine_id", c => c.Int());
        }
        
        public override void Down()
        {
            DropColumn("dbo.item", "machine_id");
            DropTable("dbo.machine_type");
        }
    }
}
