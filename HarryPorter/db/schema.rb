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

ActiveRecord::Schema.define(version: 20131017235017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: true do |t|
    t.string "name"
    t.string "colors"
    t.string "slogan"
  end

  create_table "lectures", force: true do |t|
    t.integer "Teacher_id"
    t.integer "Student_id"
    t.string  "name"
    t.text    "description"
  end

  add_index "lectures", ["Student_id"], name: "index_lectures_on_Student_id", using: :btree
  add_index "lectures", ["Teacher_id"], name: "index_lectures_on_Teacher_id", using: :btree

  create_table "students", force: true do |t|
    t.integer "house_id"
    t.string  "name"
  end

  add_index "students", ["house_id"], name: "index_students_on_house_id", using: :btree

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
