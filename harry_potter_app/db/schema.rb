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

ActiveRecord::Schema.define(version: 20131017224928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professor_skills", force: true do |t|
    t.integer  "level"
    t.integer  "professor_id"
    t.integer  "spell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professor_skills", ["professor_id"], name: "index_professor_skills_on_professor_id", using: :btree
  add_index "professor_skills", ["spell_id"], name: "index_professor_skills_on_spell_id", using: :btree

  create_table "professors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "time"
    t.integer  "lecture_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["lecture_id"], name: "index_sections_on_lecture_id", using: :btree
  add_index "sections", ["professor_id"], name: "index_sections_on_professor_id", using: :btree

  create_table "sections_students", id: false, force: true do |t|
    t.integer "section_id"
    t.integer "student_id"
  end

  add_index "sections_students", ["section_id", "student_id"], name: "index_sections_students_on_section_id_and_student_id", using: :btree
  add_index "sections_students", ["section_id"], name: "index_sections_students_on_section_id", using: :btree
  add_index "sections_students", ["student_id"], name: "index_sections_students_on_student_id", using: :btree

  create_table "spells", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_skills", force: true do |t|
    t.integer  "level"
    t.integer  "student_id"
    t.integer  "spell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_skills", ["spell_id"], name: "index_student_skills_on_spell_id", using: :btree
  add_index "student_skills", ["student_id"], name: "index_student_skills_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "grade"
    t.string   "gender"
    t.string   "image"
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["house_id"], name: "index_students_on_house_id", using: :btree

end
