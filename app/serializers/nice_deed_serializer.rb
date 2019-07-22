class NiceDeedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :when, :what, :who, :picture, :points
end
