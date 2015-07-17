class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :grade
      t.string :gender
      t.string :image
      t.belongs_to :house, index:true
      t.timestamps
    end
  end
end
