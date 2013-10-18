class Teacher < ActiveRecord::Base 
	has_many :lectures 
	has_many :spells, through: :skills
	has_many :spells, through: :skills 
	has_many :skills 
end 

