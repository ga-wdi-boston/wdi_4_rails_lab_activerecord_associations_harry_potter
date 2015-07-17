class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.belongs_to :student, index: true
      t.belongs_to :spell, index: true
      t.belongs_to :teacher, index: true
      t.integer :skill_level
      t.timestamps
    end
  end
end
