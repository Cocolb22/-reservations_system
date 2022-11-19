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

ActiveRecord::Schema[7.0].define(version: 2022_11_18_143503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.integer "billet_number"
    t.integer "reservation_number"
    t.datetime "reservation_date"
    t.datetime "reservation_hour"
    t.integer "spectacle_key"
    t.string "spectacle"
    t.integer "representation_key"
    t.string "representation"
    t.datetime "representation_date"
    t.datetime "representation_hour"
    t.datetime "representation_end_date"
    t.datetime "representation_end_hour"
    t.integer "price"
    t.string "product_type"
    t.string "sale_company"
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "adress"
    t.integer "zipcode"
    t.string "country"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
