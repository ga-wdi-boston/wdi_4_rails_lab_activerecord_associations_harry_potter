class Professor < ActiveRecord::Base
	has_many :spells
	has_many :students, through :sections	
end