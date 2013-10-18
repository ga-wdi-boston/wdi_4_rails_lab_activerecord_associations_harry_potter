class CreateSkillsJoinTable < ActiveRecord::Migration
def change
  create_table :skills do |t|
  t.integer :student_id
  t.integer :professor_id
  t.integer :spell_id
  t.integer :level
  end

  add_index :skills, :student_id
  add_index :skills, :professor_id
  add_index :skills, :spell_id
  end
end
