class Student < ActiveRecord::Base
  belongs_to :house
  has_many :spells
  has_many :lectures
  has_many :professors, through: :lectures
end