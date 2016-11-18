class Pitch < ApplicationRecord
  belongs_to :user
  has_many :first_votes, class_name: 'R1vote'
  has_many :ranking_votes, class_name: 'R2vote'
end
