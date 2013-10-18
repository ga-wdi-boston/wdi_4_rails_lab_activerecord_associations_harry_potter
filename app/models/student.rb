class Student < ActiveRecord::Base
  has_many :registrations
  has_many :lectures, through: :registrations
end