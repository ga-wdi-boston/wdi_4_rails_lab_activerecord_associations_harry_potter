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

ActiveRecord::Schema.define(version: 20131018020311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: true do |t|
    t.string   "name"
    t.string   "colors"
    t.text     "slogan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lectures", ["student_id"], name: "index_lectures_on_student_id", using: :btree
  add_index "lectures", ["teacher_id"], name: "index_lectures_on_teacher_id", using: :btree

  create_table "lectures_students", id: false, force: true do |t|
    t.integer "lecture_id"
    t.integer "student_id"
  end

  add_index "lectures_students", ["lecture_id", "student_id"], name: "index_lectures_students_on_lecture_id_and_student_id", using: :btree
  add_index "lectures_students", ["lecture_id"], name: "index_lectures_students_on_lecture_id", using: :btree
  add_index "lectures_students", ["student_id"], name: "index_lectures_students_on_student_id", using: :btree

  create_table "skills", force: true do |t|
    t.integer  "student_id"
    t.integer  "spell_id"
    t.integer  "teacher_id"
    t.integer  "skill_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["spell_id"], name: "index_skills_on_spell_id", using: :btree
  add_index "skills", ["student_id"], name: "index_skills_on_student_id", using: :btree
  add_index "skills", ["teacher_id"], name: "index_skills_on_teacher_id", using: :btree

  create_table "spells", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "house_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["house_id"], name: "index_students_on_house_id", using: :btree

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
