class NiceDeed < ApplicationRecord
  belongs_to :user

  validates :heading, :user, :what, :when, :to_whom, presence: true
end
