class CarSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :origin
  attributes :make, :model, :year
end
