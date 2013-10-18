class Skill < ActiveRecord::Base
	belongs_to :skillable, polymorphic: true
	belongs_to :spell
end