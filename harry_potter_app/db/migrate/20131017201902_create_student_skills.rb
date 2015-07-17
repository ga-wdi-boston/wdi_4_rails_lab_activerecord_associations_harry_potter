class CreateStudentSkills < ActiveRecord::Migration
  def change
    create_table :student_skills do |t|
      t.integer :level
      t.belongs_to :student, index:true
      t.belongs_to :spell, index:true
      t.timestamps
    end
  end
end
