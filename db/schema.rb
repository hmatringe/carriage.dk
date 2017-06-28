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

ActiveRecord::Schema.define(version: 20170628083035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "bikes", force: :cascade do |t|
    t.string   "color"
    t.string   "description_title"
    t.text     "description"
    t.string   "caption"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "brand_model"
    t.string   "brand"
    t.string   "brand_sku"
    t.boolean  "renter_must_have_experience_driving_cargo_bikes"
    t.boolean  "renter_must_have_experience_cycling_in_the_city"
    t.boolean  "renter_can_be_a_company"
    t.boolean  "has_seatbelt"
    t.boolean  "has_rain_cover"
    t.boolean  "box_has_bench"
    t.boolean  "is_electric"
    t.integer  "children_seating_capacity",                       default: 0
    t.string   "gears_set"
    t.string   "light_set"
    t.string   "lock_set"
    t.string   "box_dimensions"
    t.string   "state"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.integer  "user_id"
    t.integer  "price_Øres",                                      default: 0, null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bike_id"
    t.date     "pick_up_date"
    t.date     "return_date"
    t.string   "state"
    t.string   "bike_sku"
    t.string   "message_to_owner"
    t.boolean  "accepts_terms"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "amount_Øres",      default: 0, null: false
    t.json     "payment"
    t.index ["bike_id"], name: "index_rentals_on_bike_id", using: :btree
    t.index ["user_id"], name: "index_rentals_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.date     "birthday"
    t.text     "profile_description"
    t.string   "address"
    t.string   "phone"
    t.string   "postal_code"
    t.string   "city"
    t.string   "publishable_key"
    t.string   "access_code"
    t.string   "stripe_customer_id"
    t.string   "country"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bikes", "users"
  add_foreign_key "rentals", "bikes"
  add_foreign_key "rentals", "users"
end
