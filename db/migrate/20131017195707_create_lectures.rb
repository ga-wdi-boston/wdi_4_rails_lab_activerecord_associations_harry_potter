class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :dayofweek
      t.belongs_to :professor
    end
  end
end