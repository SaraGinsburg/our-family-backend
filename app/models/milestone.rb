class Milestone < ApplicationRecord
  belongs_to :user

  validates :heading, :user, :what, presence: true
end
