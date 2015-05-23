class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
    end
  end
end
