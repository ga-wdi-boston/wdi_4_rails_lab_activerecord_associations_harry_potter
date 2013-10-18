class CreateSpellsStudentsJoinTable < ActiveRecord::Migration
  def change
  	create_table :spells_students, id: false do |t|
  		t.integer :spell_id
  		t.integer :student_id
  		t.integer :student_skill
  	end

  	add_index :spells_students, :spell_id
  	add_index :spells_students, :student_id
  end
end
