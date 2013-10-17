class Student < ActiveRecord::Base
	belongs_to :house
	has_many :professors, through: :sections
	has_many :spells
	has_many :skills, :class_name => Skill
end