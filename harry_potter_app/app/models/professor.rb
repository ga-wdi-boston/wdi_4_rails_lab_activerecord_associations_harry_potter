class Professor < ActiveRecord::Base
  has_many :sections
  has_many :students, through: :sections
  has_many :professor_skills
  has_many :spells, through: :professor_skills
end