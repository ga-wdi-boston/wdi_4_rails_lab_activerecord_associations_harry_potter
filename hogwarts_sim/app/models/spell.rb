class Spell < ActiveRecord::Base
  belongs_to :students
  belongs_to :teachers
  has_many :tags, as: :taggable
end