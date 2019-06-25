class MilestoneSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :when, :what, :picture, :heading
end
