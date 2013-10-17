class CreateLecturesStudentsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :students, :lectures do |t|
      # t.index [:student_id, :lecture_id]
      # t.index [:lecture_id, :student_id]
    end
  end
end
