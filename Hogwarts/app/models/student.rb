class Student < ActiveRecord::Base
	belongs_to :house
	has_many :lectures
	has_many :professors, through: :lectures

	has_many :skills, as: :skillable
end