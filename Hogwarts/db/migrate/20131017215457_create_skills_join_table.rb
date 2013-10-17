class CreateSkillsJoinTable < ActiveRecord::Migration
  def change
  	create_table :skills, id: false do |t|
  		t.integer :student_id
  		t.integer :professor_id
  		t.integer :spell_id
  		t.integer :skill
  	end
  end
end
