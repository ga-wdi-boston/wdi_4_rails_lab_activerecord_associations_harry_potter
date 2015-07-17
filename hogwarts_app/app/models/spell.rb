class Spell < ActiveRecord::Base
  belongs_to :student
  belongs_to :professor
  has_and_belongs_to_many :skills
end