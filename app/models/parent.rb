class Parent < ApplicationRecord
  has_many :children, foreign_key: :parent_id, class_name: "Sibling"
  has_secure_password
end
