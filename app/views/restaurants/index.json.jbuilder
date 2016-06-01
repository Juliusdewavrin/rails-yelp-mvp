json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :phonenumber, :category
  json.url restaurant_url(restaurant, format: :json)
end
