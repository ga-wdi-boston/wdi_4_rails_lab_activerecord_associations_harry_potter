class CreateSkills < ActiveRecord::Migration
  def change
  	create_table :skills do |t|
  		t.integer :level
		t.belongs_to :skillable, polymorphic: true, index: true
		t.belongs_to :spell
		t.timestamps  		
  	end
  end
end
