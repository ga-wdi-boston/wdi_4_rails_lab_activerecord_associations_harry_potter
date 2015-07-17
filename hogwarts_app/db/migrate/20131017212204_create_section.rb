class CreateSection < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :day
      t.timestamps
    end
  end
end
