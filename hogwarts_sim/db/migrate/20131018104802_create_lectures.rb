class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.integer :professor_id
      t.integer :student_id
      t.datetime :lecture_datetime
      t.string :lecture_name
    end
  end
end
