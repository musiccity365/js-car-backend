class CarSerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :origin
  attributes :make, :model, :year, :mileage, :origin_id
end
