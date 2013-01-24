class AddTenantId < ActiveRecord::Migration
  def up
   change_table :phone_numbers do |t|
      t.integer :tenant_id
    end
   change_table :salaries do |t|
      t.integer :tenant_id
    end
  end

  def down
    remove_column :phone_numbers, :tenant_id
    remove_column :salaries, :tenant_id
  end
end
