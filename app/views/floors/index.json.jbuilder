json.array!(@floors) do |floor|
  json.extract! floor, :id, :floor_number, :home_id
  json.url floor_url(floor, format: :json)
end
