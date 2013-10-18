class Spell < ActiveRecord::Base
	has_many :students , through: :skills 
	has_many :teachers, through: :skills 
	has_many :skills 
end 
