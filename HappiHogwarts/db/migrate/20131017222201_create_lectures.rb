class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.belongs_to :student, index: true
      t.belongs_to :professor, index: true
      t.string :weekday
      t.string :topic
    end
  end
end
