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

ActiveRecord::Schema.define(version: 20131018123003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: true do |t|
    t.string "name"
    t.string "colors"
    t.string "slogan"
  end

  create_table "houses_students", id: false, force: true do |t|
    t.integer "house_id",   null: false
    t.integer "student_id", null: false
  end

  create_table "lectures", force: true do |t|
    t.integer  "professor_id"
    t.integer  "student_id"
    t.datetime "lecture_datetime"
    t.string   "lecture_name"
  end

  create_table "professors", force: true do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "students", force: true do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "tags", force: true do |t|
    t.string   "skill_level"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["taggable_id", "taggable_type"], name: "index_tags_on_taggable_id_and_taggable_type", using: :btree

end
