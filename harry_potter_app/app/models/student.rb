class Student < ActiveRecord::Base
  belongs_to :house
  has_many :sections
  has_many :professors, through: :sections
end