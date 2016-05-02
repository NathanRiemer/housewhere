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

ActiveRecord::Schema.define(version: 20160502150516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: :cascade do |t|
    t.string   "container_type"
    t.string   "location"
    t.string   "description"
    t.integer  "room_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "containers", ["room_id"], name: "index_containers_on_room_id", using: :btree

  create_table "floors", force: :cascade do |t|
    t.string   "floor_number"
    t.integer  "home_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "floors", ["home_id"], name: "index_floors_on_home_id", using: :btree

  create_table "homes", force: :cascade do |t|
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "room_type"
    t.integer  "floor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rooms", ["floor_id"], name: "index_rooms_on_floor_id", using: :btree

  create_table "things", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "quantity"
    t.string   "category"
    t.string   "location"
    t.integer  "container_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "things", ["container_id"], name: "index_things_on_container_id", using: :btree

  add_foreign_key "containers", "rooms"
  add_foreign_key "floors", "homes"
  add_foreign_key "rooms", "floors"
  add_foreign_key "things", "containers"
end
