class Teacher < ActiveRecord::Base 
	has_many :lectures 
	has_many :spells, through: :skills 
end 

