ActiveRecord::Schema.define(version: 20131018012117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lectures", force: true do |t|
    t.string "name"
    t.string "dayofweek"
  end

  create_table "professors", force: true do |t|
    t.string "name"
  end

  create_table "registrations", force: true do |t|
    t.integer "lecture_id"
    t.integer "student_id"
  end

  add_index "registrations", ["lecture_id"], name: "index_registrations_on_lecture_id", using: :btree
  add_index "registrations", ["student_id"], name: "index_registrations_on_student_id", using: :btree

  create_table "spells", force: true do |t|
    t.string "name"
  end

  create_table "students", force: true do |t|
    t.string "name"
    t.string "house"
  end

end
