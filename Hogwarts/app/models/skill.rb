class Skill < ActiveRecord::Base
	belongs_to :skillable, polymorphic: true
end