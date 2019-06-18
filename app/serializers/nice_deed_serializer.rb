class NiceDeedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :when, :what, :to_whom, :picture, :points
end
