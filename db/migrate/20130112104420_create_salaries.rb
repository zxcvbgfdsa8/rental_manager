class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :type
      t.decimal :payment_ammount
      t.integer :number_of_payments

      t.timestamps
    end
  end
end
