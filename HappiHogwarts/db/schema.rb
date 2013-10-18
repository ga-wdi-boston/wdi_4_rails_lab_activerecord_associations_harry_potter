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

ActiveRecord::Schema.define(version: 20131018123425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.integer "student_id"
    t.integer "professor_id"
    t.string  "weekday"
    t.string  "topic"
  end

  add_index "lectures", ["professor_id"], name: "index_lectures_on_professor_id", using: :btree
  add_index "lectures", ["student_id"], name: "index_lectures_on_student_id", using: :btree

  create_table "lectures_students", id: false, force: true do |t|
    t.integer "student_id", null: false
    t.integer "lecture_id", null: false
  end

  create_table "professors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", force: true do |t|
    t.decimal  "skill_level"
    t.integer  "student_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "incantation"
  end

  add_index "spells", ["professor_id"], name: "index_spells_on_professor_id", using: :btree
  add_index "spells", ["student_id"], name: "index_spells_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_id"
    t.integer  "lecture_id"
  end

end
