class KindWordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :when, :what, :who, :heading
end
