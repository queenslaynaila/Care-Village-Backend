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

ActiveRecord::Schema.define(version: 2022_11_10_131726) do

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "usertype"
    t.integer "client_id"
    t.integer "sitter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "location"
    t.string "email"
    t.string "phonenumber"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "joboffers", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.integer "sitter_id"
    t.integer "category_id"
    t.string "about"
    t.string "keyskills"
    t.string "availability"
    t.string "education"
    t.string "gender"
    t.text "additionalqualification"
    t.string "location"
    t.text "comfortability_workinh_outside_location"
    t.text "Languages"
    t.string "workexperience"
    t.string "email"
    t.integer "phonenumber"
    t.integer "ratecharged"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "headline"
    t.string "date_posted"
    t.string "expires"
    t.string "care_needed"
    t.string "schedule"
    t.string "location"
    t.string "description"
    t.text "majorrequirement"
    t.integer "sitter_id"
    t.integer "client_id"
    t.string "status", default: "Not Hired"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.integer "year_of_birth"
    t.string "password"
    t.string "location"
    t.integer "age"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
