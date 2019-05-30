# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_30_125832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beds", force: :cascade do |t|
    t.bigint "hostel_id"
    t.string "room_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["hostel_id"], name: "index_beds_on_hostel_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "start_at"
    t.date "end_at"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "beds", default: [], array: true
    t.integer "amount_cents", default: 0, null: false
    t.string "state"
    t.jsonb "payment"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "hostels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city_name"
    t.string "hostel_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.float "latitude"
    t.float "longitude"
    t.string "description"
    t.index ["user_id"], name: "index_hostels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "beds", "hostels"
  add_foreign_key "bookings", "users"
  add_foreign_key "hostels", "users"
end
