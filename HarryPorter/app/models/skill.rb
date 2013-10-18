class Skill < ActiveRecord::Base 
	belongs_to :spell
	belongs_to :student
	belongs_to :teacher
end 
