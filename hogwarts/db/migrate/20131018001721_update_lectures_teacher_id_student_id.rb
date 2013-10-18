class UpdateLecturesTeacherIdStudentId < ActiveRecord::Migration
  def change
    rename_column(:lectures, :Teacher_id, :teacher_id)
    rename_column(:lectures, :Student_id, :student_id)
  end
end
