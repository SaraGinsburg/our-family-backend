class User < ApplicationRecord
  # not sure about the relationship to parent within User
  # belongs_to :parent
  has_many :kindWords
  has_many :niceDeeds
  has_many :milestones

  validates :first_name, :last_name, :username, presence: true
  validates :username, uniqueness: true
  has_secure_password

end
