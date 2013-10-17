class Section < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :professor
  has_and_belongs_to_many :students
end