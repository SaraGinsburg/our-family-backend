class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :username, :birthdate, :picture, :points_earned
  has_many :milestones, serializer: MilestoneSerializer
  has_many :kindWords, serializer: KindWordSerializer
  has_many :niceDeeds, serializer: NiceDeedSerializer

end
