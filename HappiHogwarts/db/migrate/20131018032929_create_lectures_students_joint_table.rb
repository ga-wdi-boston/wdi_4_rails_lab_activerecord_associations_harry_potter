class CreateLecturesStudentsJointTable < ActiveRecord::Migration
  def change
    create_table :lectures_students, id: false do |t|
      t.integer :student_id
      t.integer :lecture_id
    end

    add_index :lectures_students, :student_id
    add_index :lectures_students, :lecture_id
    add_index :lectures_students, [:student_id, :lecture_id]
  end
end
