class Skill < ActiveRecord::Base
	belongs_to :student
	belongs_to :professor
	belongs_to :spell
end