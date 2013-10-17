class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :time
      t.timestamps
    end
  end
end
