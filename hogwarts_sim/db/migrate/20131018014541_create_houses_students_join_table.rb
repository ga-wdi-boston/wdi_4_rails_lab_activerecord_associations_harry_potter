class CreateHousesStudentsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :houses, :students do |t|
      # t.index [:house_id, :student_id]
      # t.index [:student_id, :house_id]
    end
  end
end
