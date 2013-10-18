class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :level
      t.belongs_to :student, index: true
      t.belongs_to :professor, index: true
      t.belongs_to :spell, index: true
    end
  end
end
