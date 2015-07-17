class CreateLecturesStudentsJoinTable < ActiveRecord::Migration
  def change
  	create_table :lectures_students, id: false do |t|
  	  t.integer :lecture_id
  	  t.integer :student_id
    end

    add_index :lectures_students, :lecture_id
    add_index :lectures_students, :student_id
    add_index :lectures_students, [:lecture_id, :student_id]
  end
end
