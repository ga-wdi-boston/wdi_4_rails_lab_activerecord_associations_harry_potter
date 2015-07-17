class Student < ActiveRecord::Base
  belongs_to :house
  belongs_to :lecture
  has_many :professors, through: :lectures
end