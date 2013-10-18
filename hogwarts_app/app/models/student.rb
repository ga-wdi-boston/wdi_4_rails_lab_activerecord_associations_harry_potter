class Student < ActiveRecord::Base
	belongs_to :house
	has_many :professors, through: :sections
	has_many :skills
	has_many :spells, through: :skills
#	has_many :student_skills
#	has_many :spells, through: :student_skills
end