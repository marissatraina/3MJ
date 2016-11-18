class R2vote < ApplicationRecord
  belongs_to :user
  belongs_to :pitch

  validates_uniqueness_of :user, scope: :rank
  validates_uniqueness_of :user, scope: :pitch
end
