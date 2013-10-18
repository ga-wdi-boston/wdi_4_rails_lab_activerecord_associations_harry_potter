class AddProfessorIdToSection < ActiveRecord::Migration
  def change
  	add_column :sections, :professor_id, :integer
  end
end
