class Sibling < ApplicationRecord
  has_secure_password
  belongs_to :parent
  has_many :kindWords
  has_many :niceDeeds
  has_many :milestones

end
