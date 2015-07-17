class Student < ActiveRecord::Base
  belongs_to :house
  has_and_belongs_to_many :sections
  has_many :student_skills
  has_many :spells, through: :student_skills
end