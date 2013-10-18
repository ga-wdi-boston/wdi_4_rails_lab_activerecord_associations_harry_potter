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

ActiveRecord::Schema.define(version: 20131018001947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: true do |t|
    t.string   "name"
    t.string   "colors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.string "name"
  end

  create_table "professors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string "day"
  end

  create_table "skills", force: true do |t|
    t.integer "student_id"
    t.integer "professor_id"
    t.integer "spell_id"
    t.integer "level"
  end

  add_index "skills", ["professor_id"], name: "index_skills_on_professor_id", using: :btree
  add_index "skills", ["spell_id"], name: "index_skills_on_spell_id", using: :btree
  add_index "skills", ["student_id"], name: "index_skills_on_student_id", using: :btree

  create_table "spells", force: true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.integer  "year",       default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_id"
  end

end
