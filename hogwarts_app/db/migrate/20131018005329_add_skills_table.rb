class AddSkillsTable < ActiveRecord::Migration
  def change
  	create_table :skills do |t|
  		t.belongs_to :student
  		t.belongs_to :professor
  		t.belongs_to :spell
  		t.integer :level, default: 0
  	end
  end
end
