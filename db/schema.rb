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

ActiveRecord::Schema.define(version: 2022_07_02_164600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.integer "employee_no"
    t.string "full_names"
    t.string "role"
    t.string "id_number"
    t.integer "salary"
  end

  create_table "parents", force: :cascade do |t|
    t.string "fathers_full_names"
    t.integer "fathers_contacts"
    t.integer "fathers_email"
    t.integer "fathers_id_no"
    t.string "mothers_full_names"
    t.integer "mothers_contacts"
    t.integer "mothers_email"
    t.integer "mothers_id_no"
    t.string "address"
    t.string "nationality"
    t.integer "admision_number"
  end

  create_table "schoolfees", force: :cascade do |t|
    t.datetime "transaction_day"
    t.integer "admision_number"
    t.integer "ammount"
  end

  create_table "students", force: :cascade do |t|
    t.string "Full_names"
    t.integer "admision_number"
    t.datetime "date_of_birth"
    t.integer "parent_id"
    t.string "level"
    t.datetime "time"
    t.datetime "updated_at"
  end

  create_table "wages", force: :cascade do |t|
    t.integer "employee_no"
    t.datetime "transaction_date"
    t.integer "ammount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
