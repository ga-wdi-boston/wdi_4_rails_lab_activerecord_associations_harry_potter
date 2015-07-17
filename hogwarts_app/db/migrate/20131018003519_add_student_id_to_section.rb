class AddStudentIdToSection < ActiveRecord::Migration
  def change
  	add_column :sections, :student_id, :integer
  end
end
