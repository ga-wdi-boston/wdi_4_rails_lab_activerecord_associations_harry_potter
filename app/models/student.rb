class Student < ActiveRecord::Base
  has_many :registrations
  has_many :lectures, through: :registrations
  has_many :skills
  has_many :spells, through: :skills
end