class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :skill_level
      t.references :taggable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
