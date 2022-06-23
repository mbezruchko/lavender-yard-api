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

ActiveRecord::Schema.define(version: 20220623180514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartment_prices", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "apartment_id"
    t.decimal  "price"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.index ["apartment_id"], name: "index_apartment_prices_on_apartment_id", using: :btree
  end

  create_table "apartments", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.text     "description"
  end

  create_table "application_settings", force: :cascade do |t|
    t.integer  "singleton_guard"
    t.string   "email"
    t.string   "phone_main"
    t.string   "phone_additional"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["singleton_guard"], name: "index_application_settings_on_singleton_guard", unique: true, using: :btree
  end

  create_table "books", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "apartment_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.integer  "user_id"
    t.text     "user_comment"
    t.string   "user_phone"
    t.string   "user_email"
    t.index ["apartment_id"], name: "index_books_on_apartment_id", using: :btree
    t.index ["user_id"], name: "index_books_on_user_id", using: :btree
  end

  create_table "feedbacks", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "feedbackable_type"
    t.integer  "feedbackable_id"
    t.integer  "score"
    t.text     "comment"
    t.index ["feedbackable_type", "feedbackable_id"], name: "index_feedbacks_on_feedbackable_type_and_feedbackable_id", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.string   "imagable_type"
    t.integer  "imagable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["imagable_type", "imagable_id"], name: "index_images_on_imagable_type_and_imagable_id", using: :btree
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "birth_date"
    t.string   "phone"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "apartment_prices", "apartments"
  add_foreign_key "books", "apartments"
  add_foreign_key "books", "users"
end
