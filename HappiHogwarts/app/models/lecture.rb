class Lecture < ActiveRecord::Base
  belongs_to :students
  belongs_to :professor
end