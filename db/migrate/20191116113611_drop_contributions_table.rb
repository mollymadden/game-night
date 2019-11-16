class DropContributionsTable < ActiveRecord::Migration[6.0]
    def up
      drop_table :contributions
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
