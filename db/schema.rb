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

ActiveRecord::Schema.define(:version => 20121113054704) do

  create_table "administrators", :force => true do |t|
    t.string   "account_name"
    t.string   "real_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "client_to_restaurant_reviews", :force => true do |t|
    t.integer  "client_id"
    t.integer  "restaurant_id"
    t.string   "review"
    t.integer  "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "client_users", :force => true do |t|
    t.string   "gender"
    t.date     "birthdate"
    t.string   "zipcode"
    t.string   "address"
    t.string   "phone"
    t.string   "account_name"
    t.string   "real_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "client_users", ["account_name"], :name => "index_client_users_on_account_name", :unique => true

  create_table "orders", :force => true do |t|
    t.integer  "client_user_id"
    t.integer  "restaurant_user_id"
    t.string   "content"
    t.string   "address"
    t.string   "zipcode"
    t.string   "phone"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "restaurant_to_client_reviews", :force => true do |t|
    t.integer  "client_id"
    t.integer  "restaurant_id"
    t.string   "review"
    t.integer  "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurant_users", :force => true do |t|
    t.string   "license_no"
    t.string   "phone"
    t.integer  "restaurant_id"
    t.string   "account_name"
    t.string   "real_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "camis"
    t.string   "dba"
    t.string   "boro"
    t.string   "building"
    t.string   "street"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "cuisine"
    t.string   "insp_date"
    t.string   "action"
    t.string   "violcode"
    t.string   "score"
    t.string   "current_grade"
    t.string   "grade_date"
    t.string   "record_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
