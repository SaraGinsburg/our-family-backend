class MilestoneSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sibling_id, :when, :what, :picture
end
