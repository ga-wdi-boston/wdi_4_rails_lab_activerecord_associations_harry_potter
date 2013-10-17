class Section < ActiveRecord::Base
  belongs_to :lecture
  has_many_and_belongs_to :professor
  has_many_and_belongs_to :student
end