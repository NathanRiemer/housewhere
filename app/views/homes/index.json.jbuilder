json.array!(@homes) do |home|
  json.extract! home, :id, :street_address_1, :street_address_2, :city, :state, :country
  json.url home_url(home, format: :json)
end
