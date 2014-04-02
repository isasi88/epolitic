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

ActiveRecord::Schema.define(version: 20140402110330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: true do |t|
    t.integer  "polititian_id"
    t.string   "degree"
    t.string   "center"
    t.date     "start_at"
    t.date     "end_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exams", force: true do |t|
    t.integer  "polititian_id"
    t.string   "title"
    t.date     "date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "polititian_id"
    t.string   "position"
    t.string   "employer"
    t.date     "start_at"
    t.date     "end_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polititians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "political_position"
    t.date     "political_position_start_at"
    t.date     "political_position_end_at"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trials", force: true do |t|
    t.integer  "polititian_id"
    t.string   "title"
    t.date     "start_at"
    t.date     "end_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
