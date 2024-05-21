class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :grade
      t.integer :total_fee
      t.integer :fee_paid
      t.date :date_paid
      t.string :reg_no
      t.boolean :admission_fee_status
      t.boolean :uniform_status
      t.string :role
      t.integer :total_salary
      t.integer :salary_paid
      t.boolean :lunch_money_status

      t.timestamps
    end
  end
end
