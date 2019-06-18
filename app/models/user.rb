class User < ApplicationRecord
  has_secure_password
  # not sure about the relationship to parent within User
  # belongs_to :parent
  has_many :kindWords
  has_many :niceDeeds
  has_many :milestones

end
