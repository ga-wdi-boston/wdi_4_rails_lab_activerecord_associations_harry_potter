class Professor < ActiveRecord::Base
	has_many :lectures
	has_many :skills, as: :skillable
end