class CreateProfessorsSpellsJoinTable < ActiveRecord::Migration
  def change
  	create_table :spells_professors, id: false do |t|
  		t.integer :spell_id
  		t.integer :professor_id
  		t.integer :professor_skill
  	end

  	add_index :spells_professors, :spell_id
  	add_index :spells_professors, :professor_id
  end
end
