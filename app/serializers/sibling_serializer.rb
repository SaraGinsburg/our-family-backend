class SiblingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :birthdate, :picture, :points_earned
end
