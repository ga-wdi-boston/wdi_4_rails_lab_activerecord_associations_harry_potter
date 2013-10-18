class Student < ActiveRecord::Base
	belongs_to :house
	has_many :professors, through: :sections
	has_many :spells
	has_and_belongs_to_many :student_skills
end