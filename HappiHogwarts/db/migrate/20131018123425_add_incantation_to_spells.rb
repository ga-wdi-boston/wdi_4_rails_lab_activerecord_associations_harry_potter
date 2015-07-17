class AddIncantationToSpells < ActiveRecord::Migration
  def change
    add_column :spells, :incantation, :string
  end
end
