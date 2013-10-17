class Student < ActiveRecord::Base
  has_many :lectures
  has_many :professors, through: :lectures
end