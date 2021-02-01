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

ActiveRecord::Schema.define(version: 2021_02_01_014801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "dogpark_id"
    t.datetime "booking_start_date"
    t.datetime "booking_end_date"
    t.text "report_card"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "photo"
  end

  create_table "dogparks", force: :cascade do |t|
    t.integer "capacity"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "dogpark_name"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.string "password_digest"
    t.text "dog_name"
    t.string "dog_breed"
    t.boolean "vaccinated"
    t.text "vet"
    t.text "vaccination_certificate"
    t.text "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
