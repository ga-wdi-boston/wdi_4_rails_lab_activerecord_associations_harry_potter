class Student < ActiveRecord::Base
	belongs_to :house
	has_many :professors, through: :sections
	has_many :skills#, :class_name => Skill
	has_and_belongs_to_many :spells, through: :skills
end