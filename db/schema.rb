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

ActiveRecord::Schema[7.1].define(version: 2024_07_03_225205) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "car"
    t.string "plate"
    t.integer "year"
    t.string "brand"
    t.integer "reindeer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "store_id", null: false
    t.bigint "car_id", null: false
    t.index ["car_id"], name: "index_cars_on_car_id"
    t.index ["store_id"], name: "index_cars_on_store_id"
  end

  create_table "cars_users", id: false, force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "favorite_cars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "favorite_cars_id", null: false
    t.index ["favorite_cars_id"], name: "index_favorite_lists_on_favorite_cars_id"
    t.index ["user_id"], name: "index_favorite_lists_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.integer "cnpj"
    t.string "address"
    t.integer "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "cpf"
    t.integer "age"
    t.string "driver_license"
    t.integer "car"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "car_id", null: false
    t.index ["car_id"], name: "index_users_on_car_id"
  end

  add_foreign_key "cars", "cars"
  add_foreign_key "cars", "stores"
  add_foreign_key "favorite_lists", "favorite_cars", column: "favorite_cars_id"
  add_foreign_key "favorite_lists", "users"
  add_foreign_key "users", "cars"
end
