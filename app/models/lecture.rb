class Lecture < ActiveRecord::Base
  belongs_to :professor
  belongs_to :student
end