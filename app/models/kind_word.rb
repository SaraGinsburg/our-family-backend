class KindWord < ApplicationRecord
  belongs_to :user

  validates :heading, :user, :what, :when, :who, presence: true
end
