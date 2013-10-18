class Spell < ActiveRecord::Base
  has_many :skills
end