class Spell < ActiveRecord::Base
	belongs_to :students
	belongs_to :professors
	has_and_belongs_to_many :skills
end