class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.decimal :skill_level
      t.belongs_to :student, index: true
      t.belongs_to :professor, index: true
      t.timestamps
    end
  end
end
