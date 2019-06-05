class ParentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :picture
end
