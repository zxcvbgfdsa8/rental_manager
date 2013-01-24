class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
