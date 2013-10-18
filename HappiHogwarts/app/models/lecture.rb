class Lecture < ActiveRecord::Base
  has_many :students
  belongs_to :professor
end