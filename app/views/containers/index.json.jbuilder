json.array!(@containers) do |container|
  json.extract! container, :id, :container_type, :location, :description, :room_id
  json.url container_url(container, format: :json)
end
