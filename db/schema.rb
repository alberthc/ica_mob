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

ActiveRecord::Schema.define(version: 20161114051102) do

  create_table "campus", force: true do |t|
    t.string   "school_name"
    t.string   "org_name"
    t.string   "main_pic_id"
    t.string   "group_pic_path"
    t.text     "keywords"
    t.text     "description"
    t.string   "rally_name"
    t.string   "rally_datetime"
    t.string   "rally_location"
    t.string   "church_name"
    t.string   "church_datetime"
    t.string   "church_location"
    t.string   "announcements_bg_color1_class"
    t.string   "announcements_bg_color2_class"
    t.string   "fb_campus_link"
    t.string   "fb_link_class"
    t.string   "small_groups_path"
    t.string   "small_groups_pic_id"
    t.string   "leaders_path"
    t.string   "leaders_pic_id"
    t.string   "gcal_path"
    t.integer  "campus_small_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url_key"
    t.string   "email"
  end

  add_index "campus", ["url_key"], name: "index_campus_on_url_key"

  create_table "campus_campus_leaders", force: true do |t|
    t.integer  "campus_id"
    t.integer  "campus_leader_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "campus_leaders", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "bio"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_path"
    t.integer  "position"
  end

  create_table "campus_small_groups", force: true do |t|
    t.integer  "campus_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "current_study"
    t.string   "location_and_time"
    t.string   "leaders"
    t.integer  "position"
    t.string   "contact_info"
  end

  create_table "student_leaders", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "image_path"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campus_id"
    t.boolean  "is_active"
  end

end
