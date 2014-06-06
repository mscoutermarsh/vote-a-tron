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

ActiveRecord::Schema.define(version: 20140605230903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "contestants", force: true do |t|
    t.string   "name"
    t.integer  "poll_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_url"
    t.integer  "votes_count"
  end

  add_index "contestants", ["poll_id"], name: "index_contestants_on_poll_id", using: :btree

  create_table "polls", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "allowed_referrers"
    t.boolean  "active",            default: true
  end

  create_table "votes", force: true do |t|
    t.integer  "contestant_id"
    t.string   "ip_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "browser"
    t.string   "referrer"
    t.string   "question"
    t.integer  "answer"
    t.boolean  "valid_vote",    default: false
  end

  add_index "votes", ["contestant_id"], name: "index_votes_on_contestant_id", using: :btree
  add_index "votes", ["ip_address"], name: "index_votes_on_ip_address", using: :btree
  add_index "votes", ["valid_vote"], name: "index_votes_on_valid_vote", using: :btree

end
