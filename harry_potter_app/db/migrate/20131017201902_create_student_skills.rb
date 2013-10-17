class CreateStudentSkills < ActiveRecord::Migration
  def change
    create_table :student_skills do |t|
      t.integer :level
      t.timestamps
    end
  end
end
