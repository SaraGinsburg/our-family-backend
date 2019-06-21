class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :username, :birthdate, :picture, :points_earned
end
