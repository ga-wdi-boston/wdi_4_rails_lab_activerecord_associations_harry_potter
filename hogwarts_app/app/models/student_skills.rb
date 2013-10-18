class StudentSkill < ActiveRecord
	belongs_to :student
	belongs_to :professor
	belongs_to :spell
end