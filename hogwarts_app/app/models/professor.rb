class Professor < ActiveRecord::Base
  has_many :skills
  has_many :spells, through: :skills
  has_many :lectures
  has_many :students, through: :lectures
end