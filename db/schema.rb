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

ActiveRecord::Schema.define(version: 20140326100637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "polititians", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "position"
    t.date     "position_start_at"
    t.date     "position_end_at"
    t.boolean  "education"
    t.string   "education_center"
    t.string   "education_degree"
    t.date     "education_start_at"
    t.date     "education_end_at"
    t.boolean  "prof_experience"
    t.string   "prof_experience_employer"
    t.string   "prof_experience_position"
    t.date     "prof_expererience_start_at"
    t.date     "prof_experience_end_at"
    t.boolean  "public_exam"
    t.string   "public_exam_title"
    t.date     "public_exam_date"
    t.boolean  "english"
    t.string   "english_level"
    t.boolean  "corruption"
    t.string   "corruption_title"
    t.string   "corruption_description"
    t.date     "impeach_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
