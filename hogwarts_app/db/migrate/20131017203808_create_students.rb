class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :year, default: 1
      t.timestamps
    end
  end
end
