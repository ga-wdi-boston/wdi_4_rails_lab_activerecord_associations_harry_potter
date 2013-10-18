class Lecture < ActiveRecord::Base
  has_many :registrations
  has_many :students, through: :registrations
  belongs_to :professor
end