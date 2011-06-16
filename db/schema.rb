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

ActiveRecord::Schema.define(:version => 20110616205845) do

  create_table "calls", :force => true do |t|
    t.integer  "constituent_id"
    t.integer  "campaign_id"
    t.date     "call_date"
    t.time     "call_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", :force => true do |t|
    t.text     "script"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "constituents", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "street"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "constituents", ["email"], :name => "index_constituents_on_email", :unique => true

  create_table "orgs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "primary_user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outcomes", :force => true do |t|
    t.string   "outcome_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", :force => true do |t|
    t.integer  "call_id"
    t.integer  "outcome_id"
    t.boolean  "in_favor"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", :force => true do |t|
    t.integer  "campaign_id"
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "org_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
