class Cohort < ApplicationRecord
  has_many :students, class_name: 'User'
  has_many :pitches, through: :students, source: :pitches
end
