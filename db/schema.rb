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

ActiveRecord::Schema[7.0].define(version: 2023_06_30_131034) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "house_reservations", force: :cascade do |t|
    t.bigint "house_id", null: false
    t.bigint "reservation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_house_reservations_on_house_id"
    t.index ["reservation_id"], name: "index_house_reservations_on_reservation_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.integer "bedrooms", null: false
    t.integer "bathrooms", null: false
    t.decimal "price", null: false
    t.string "image", default: "https://unsplash.com/photos/2gDwlIim3Uw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "city"
    t.date "start_date"
    t.date "end_date"
    t.bigint "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["house_id"], name: "index_reservations_on_house_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "house_reservations", "houses"
  add_foreign_key "house_reservations", "reservations"
  add_foreign_key "houses", "users"
  add_foreign_key "reservations", "houses"
  add_foreign_key "reservations", "users"
end
