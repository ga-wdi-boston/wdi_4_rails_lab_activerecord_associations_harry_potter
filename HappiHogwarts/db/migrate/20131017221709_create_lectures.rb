class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :weekday
      t.string :topic
      t.timestamps
    end
  end
end
