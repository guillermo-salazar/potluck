# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150704050123) do

  create_table "allergies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergies_users", id: false, force: :cascade do |t|
    t.integer "allergy_id", null: false
    t.integer "user_id",    null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "serving"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dishes", ["user_id", "created_at"], name: "index_dishes_on_user_id_and_created_at"
  add_index "dishes", ["user_id"], name: "index_dishes_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.text     "description"
    t.text     "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "event_date"
  end

  add_index "events", ["owner_id"], name: "index_events_on_owner_id"

  create_table "guests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guests", ["dish_id"], name: "index_guests_on_dish_id"
  add_index "guests", ["event_id"], name: "index_guests_on_event_id"
  add_index "guests", ["user_id"], name: "index_guests_on_user_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.integer  "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["dish_id"], name: "index_ingredients_on_dish_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
