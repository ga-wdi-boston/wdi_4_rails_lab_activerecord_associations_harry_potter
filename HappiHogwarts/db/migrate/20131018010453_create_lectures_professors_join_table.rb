class CreateLecturesProfessorsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :lectures, :professors do |t|
      # t.index [:lecture_id, :professor_id]
      # t.index [:professor_id, :lecture_id]
    end
  end
end
