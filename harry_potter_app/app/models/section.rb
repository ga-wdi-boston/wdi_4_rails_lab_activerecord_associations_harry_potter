class Section < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :professor
  belongs_to :student
end