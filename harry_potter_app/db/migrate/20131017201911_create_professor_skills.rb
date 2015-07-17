class CreateProfessorSkills < ActiveRecord::Migration
  def change
    create_table :professor_skills do |t|
      t.integer :level
      t.belongs_to :professor, index:true
      t.belongs_to :spell, index:true
      t.timestamps
    end
  end
end
