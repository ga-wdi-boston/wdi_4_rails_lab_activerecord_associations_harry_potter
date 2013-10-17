class CreateSectionsStudentsJoinTable < ActiveRecord::Migration
  def change
    create_table :sections_students, id: false do |t|
      t.integer :section_id
      t.integer :student_id
  end
  add_index :sections_students, :section_id
  add_index :sections_students, :student_id
  add_index :sections_students, [:section_id, :student_id]
  end
end