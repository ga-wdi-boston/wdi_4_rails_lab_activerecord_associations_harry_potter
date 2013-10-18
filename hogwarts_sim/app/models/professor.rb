class Professor < ActiveRecord::Base
      has_many :lectures
      has_many :students, through: :lectures
      has_many :tags, as: :taggable

    end