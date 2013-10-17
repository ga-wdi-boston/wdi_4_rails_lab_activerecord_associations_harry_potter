class Professor < ActiveRecord::Base
	has_many :students, through: :sections
	has_many :spells
end