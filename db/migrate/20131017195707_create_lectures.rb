class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :dayofweek
      t.belongs_to :professor, index: true
      t.belongs_to :student, index: true
    end
  end
end