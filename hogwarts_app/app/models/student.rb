class Student < ActiveRecord::Base
	belongs_to :house
	has_many :professors, through: :section
end