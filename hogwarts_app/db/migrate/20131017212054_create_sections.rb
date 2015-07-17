class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :day
      t.timestamp
    end
  end
end
