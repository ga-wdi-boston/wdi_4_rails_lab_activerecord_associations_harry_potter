class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.belongs_to :Teacher, index: true
      t.belongs_to :Student, index: true
      t.string :title
      t.text :description
    end
  end
end
