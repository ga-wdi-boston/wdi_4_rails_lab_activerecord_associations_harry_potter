class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
	    t.integer :level
	    t.belongs_to :spell
	    t.belongs_to :skillable, polymorphic: true, index: true
	    t.timestamps
    end
  end
end
