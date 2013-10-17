class CreateProfessorSkills < ActiveRecord::Migration
  def change
    create_table :professor_skills do |t|
      t.integer :level
      t.timestamps
    end
  end
end
