class Professor < ActiveRecord::Base
	has_many :students, through: :section
end