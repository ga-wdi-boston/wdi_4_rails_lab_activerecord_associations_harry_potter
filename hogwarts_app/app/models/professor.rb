class Professor < ActiveRecord::Base
  has_many :spells
  has_many :lectures
  has_many :students through: :lectures
  has_and_belongs_to_many :skills
end