class NiceDeedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sibling_id, :when, :what, :to_whom, :picture, :points
end
