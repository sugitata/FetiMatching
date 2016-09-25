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

ActiveRecord::Schema.define(version: 20160925021553) do

  create_table "categories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "feti"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["user_id"], name: "index_categories_on_user_id"

  create_table "categorys", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "feti"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categorys", ["user_id", "feti"], name: "index_categorys_on_user_id_and_feti", unique: true
  add_index "categorys", ["user_id"], name: "index_categorys_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tweet"
    t.integer  "tweet_id"
    t.integer  "tweeted_id"
    t.integer  "user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "following_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name",                   default: "", null: false
    t.integer  "sex"
    t.string   "place",                  default: "", null: false
    t.integer  "tall"
    t.string   "hobby",                  default: "", null: false
    t.string   "image"
    t.string   "tubuyaki",               default: "", null: false
    t.string   "naiyou",                 default: "", null: false
    t.integer  "age"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
