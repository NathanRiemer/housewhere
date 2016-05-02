json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :room_type, :floor_id
  json.url room_url(room, format: :json)
end
