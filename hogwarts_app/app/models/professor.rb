class Professor < ActiveRecord::Base
	has_many :students, through: :sections
	has_many :spells
	has_and_belongs_to_many :professor_skills
end