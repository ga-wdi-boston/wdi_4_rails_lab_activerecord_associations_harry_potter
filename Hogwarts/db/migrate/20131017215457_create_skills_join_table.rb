class CreateSkillsJoinTable < ActiveRecord::Migration
  def change
  	create_table :skills do |t|
  		t.integer :student_id
  		t.integer :professor_id
  		t.integer :spell_id
  		t.integer :level
  	end
  end
end