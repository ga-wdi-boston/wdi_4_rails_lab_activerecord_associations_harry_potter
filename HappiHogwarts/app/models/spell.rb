class Spell < ActiveRecord::Base
	belongs_to:student
	belongs_to:professor
end