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

ActiveRecord::Schema.define(version: 20170911185705) do

  create_table "commons", force: :cascade do |t|
    t.integer  "plus"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "balance"
  end

  create_table "outcomes", force: :cascade do |t|
    t.integer  "level"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shares", force: :cascade do |t|
    t.integer  "amount"
    t.integer  "user_id"
    t.integer  "common_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "gender"
    t.integer  "b_year"
    t.integer  "c_status"
    t.string   "email"
    t.integer  "cfc_1"
    t.integer  "cfc_2"
    t.integer  "cfc_3"
    t.integer  "cfc_4"
    t.integer  "cfc_5"
    t.integer  "cfc_6"
    t.integer  "cfc_7"
    t.integer  "cfc_8"
    t.integer  "cfc_9"
    t.integer  "cfc_10"
    t.integer  "cfc_11"
    t.integer  "cfc_12"
    t.integer  "cfc_13"
    t.integer  "cfc_14"
    t.integer  "svo_1"
    t.integer  "svo_2"
    t.integer  "svo_3"
    t.integer  "svo_4"
    t.integer  "svo_5"
    t.integer  "svo_6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "common_id"
    t.integer  "outcome_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["common_id"], name: "index_transactions_on_common_id"
    t.index ["outcome_id"], name: "index_transactions_on_outcome_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "depto"
    t.string   "condo"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.integer  "account"
    t.integer  "place_id"
    t.index ["place_id"], name: "index_users_on_place_id"
  end

end
