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

ActiveRecord::Schema[7.1].define(version: 2024_05_21_215414) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "grade"
    t.integer "total_fee", default: 0
    t.integer "fee_paid", default: 0
    t.date "date_paid"
    t.string "reg_no", default: ""
    t.boolean "admission_fee_status", default: false
    t.boolean "uniform_status", default: false
    t.string "role", default: "learner"
    t.integer "total_salary", default: 0
    t.integer "salary_paid", default: 0
    t.boolean "lunch_money_status", default: false
    t.boolean "active", default: true
    t.string "gurdian_contact", default: ""
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
