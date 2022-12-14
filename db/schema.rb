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

ActiveRecord::Schema[7.0].define(version: 2022_11_24_045702) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "image_detections", force: :cascade do |t|
    t.string "url"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "pregnancies"
    t.integer "glucose"
    t.integer "blood_pressure"
    t.integer "skin_thickness"
    t.integer "insulin"
    t.decimal "bmi"
    t.integer "dpf"
    t.integer "age"
    t.boolean "outcome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
