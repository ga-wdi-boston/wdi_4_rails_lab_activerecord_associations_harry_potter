class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :student_id
      t.string :teacher_id
      t.string :spell_id
      t.string :skill_lvl
    end
  end
end
