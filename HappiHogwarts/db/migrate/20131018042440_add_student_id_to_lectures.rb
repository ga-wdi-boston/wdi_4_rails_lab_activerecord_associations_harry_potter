class AddStudentIdToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :student_id, :integer
  end
end
