class AddLectureIdToSection < ActiveRecord::Migration
  def change
  	add_column :sections, :lecture_id, :integer
  end
end
