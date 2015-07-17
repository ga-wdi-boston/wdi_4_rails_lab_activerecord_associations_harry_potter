class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.integer :professor_id
      t.integer :student_id
      t.string :lecture_name
      belongs_to: :professor
      belongs_to: :student
    end
  end
end
