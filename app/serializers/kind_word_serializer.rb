class KindWordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :when, :what, :to_whom, :points
end
