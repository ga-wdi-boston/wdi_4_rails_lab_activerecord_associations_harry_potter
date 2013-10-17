class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.belongs_to :house, index: true
      t.string :name
    end
  end
end
