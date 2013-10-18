class Student < ActiveRecord::Base
  belongs_to :house
  has_and_belongs_to_many :lectures
  has_many :spells, through: :skills
  has_many :skills
end