class Student < ActiveRecord::Base
  has_many :spells
  belongs_to :house
  has_many :lectures
  has_many :professors, through: :lectures
end