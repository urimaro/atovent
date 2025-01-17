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

ActiveRecord::Schema.define(:version => 20111130110716) do

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "logs", :force => true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "text"
    t.string   "id_str"
    t.string   "user_id_str"
    t.string   "user_icon_url"
    t.string   "track"
    t.string   "user_screen_name"
    t.integer  "workshop_id"
  end

  add_index "logs", ["workshop_id"], :name => "index_logs_on_workshop_id"

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "type"
    t.integer  "log_id"
    t.integer  "workshop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "host"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "workshop_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workshops", :force => true do |t|
    t.string   "name"
    t.date     "date_on"
    t.string   "hashtag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
