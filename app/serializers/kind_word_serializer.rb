class KindWordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sibling_id, :when, :what, :to_whom, :points
end
