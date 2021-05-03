class CarSerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :origin
  attributes :make, :origin
end
