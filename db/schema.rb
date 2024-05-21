# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_21_211332) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "grade"
    t.integer "total_fee"
    t.integer "fee_paid"
    t.date "date_paid"
    t.string "reg_no"
    t.boolean "admission_fee_status"
    t.boolean "uniform_status"
    t.string "role"
    t.integer "total_salary"
    t.integer "salary_paid"
    t.boolean "lunch_money_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
