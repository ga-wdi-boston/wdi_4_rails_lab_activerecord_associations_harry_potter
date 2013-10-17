class Student < ActiveRecord::Base
  belongs_to :house
  has_many :skills
  has_many :spells, through: :skills
  has_many :lectures
  has_many :professors, through: :lectures
end