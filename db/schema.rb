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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120507042619) do

  create_table "bids", :force => true do |t|
    t.float    "amount"
    t.boolean  "active",            :default => true
    t.integer  "silent_auction_id"
    t.integer  "user_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "bids", ["silent_auction_id"], :name => "index_bids_on_silent_auction_id"
  add_index "bids", ["user_id"], :name => "index_bids_on_user_id"

  create_table "silent_auctions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "open",        :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.float    "min_price"
    t.date     "end_date"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                          :null => false
    t.string   "email"
    t.string   "encrypted_password"
    t.integer  "sign_in_count",      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.boolean  "admin"
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
