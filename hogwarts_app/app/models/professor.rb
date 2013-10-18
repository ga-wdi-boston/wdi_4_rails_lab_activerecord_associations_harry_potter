class Professor < ActiveRecord::Base
#	has_many :spells
	has_many :lectures
#	has_and_belongs_to_many :skills

	has_many :skills
	has_many :spells, through: :skills 
end