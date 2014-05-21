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

ActiveRecord::Schema.define(version: 20140521075506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliations", force: true do |t|
    t.integer  "polititian_id"
    t.integer  "institution_id"
    t.date     "start_at"
    t.date     "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.integer  "polititian_id"
    t.string   "degree"
    t.string   "center"
    t.date     "start_at"
    t.date     "end_at"
    t.boolean  "not_finished"
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

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["name"], name: "index_groups_on_name", using: :btree

  create_table "institutions", force: true do |t|
    t.string   "name"
    t.date     "start_at"
    t.date     "end_at"
    t.integer  "salary"
    t.string   "avatar"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institutions", ["name"], name: "index_institutions_on_name", using: :btree

  create_table "jobs", force: true do |t|
    t.integer  "polititian_id"
    t.string   "position"
    t.boolean  "political_employer",  default: false, null: false
    t.string   "employer"
    t.date     "start_at"
    t.date     "end_at"
    t.boolean  "currently_work_here", default: false, null: false
    t.integer  "salary"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polititians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.text     "sources"
    t.string   "facebook"
    t.string   "twitter"
  end

  add_index "polititians", ["first_name"], name: "index_polititians_on_first_name", using: :btree
  add_index "polititians", ["last_name"], name: "index_polititians_on_last_name", using: :btree
  add_index "polititians", ["slug"], name: "index_polititians_on_slug", using: :btree

  create_table "trials", force: true do |t|
    t.integer  "polititian_id"
    t.string   "title"
    t.date     "start_at"
    t.date     "end_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "editor",                 default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
