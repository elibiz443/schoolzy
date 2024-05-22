class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :grade
      t.integer :total_fee, default: 0.0
      t.integer :fee_paid, default: 0.0
      t.date :date_paid
      t.string :reg_no, default: ""
      t.boolean :admission_fee_status, default: false
      t.boolean :uniform_status, default: false
      t.string :role, default: "learner"
      t.integer :total_salary, default: 0.0
      t.integer :salary_paid, default: 0.0
      t.boolean :lunch_money_status, default: false
      t.boolean :active, default: true
      t.string :gurdian_contact, default: ""
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
