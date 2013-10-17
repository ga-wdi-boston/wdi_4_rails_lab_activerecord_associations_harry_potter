class Professor < ActiveRecord::Base
	has_many :spells
	has_many :lectures
end