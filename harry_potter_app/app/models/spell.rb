class Spell < ActiveRecord::Base
  has_many :professor_skills
  has_many :student_skills
end