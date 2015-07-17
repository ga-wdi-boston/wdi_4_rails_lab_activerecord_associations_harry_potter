class Section < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :student
  belongs_to :professor
end