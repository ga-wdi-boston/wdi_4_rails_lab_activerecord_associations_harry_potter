class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.integer :professor_id
      t.string :weekday
      t.string :topic
    end
  end
end
