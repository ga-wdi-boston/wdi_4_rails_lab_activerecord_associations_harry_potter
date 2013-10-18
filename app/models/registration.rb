class Registration < ActiveRecord::Base
  belongs_to :student
  belongs_to :lecture
  belongs_to :professor
end