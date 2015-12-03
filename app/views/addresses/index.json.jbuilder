json.array!(@addresses) do |address|
  json.extract! address, :id, :street_1, :street_2, :city, :state, :zip, :country, :contact_id
  json.url address_url(address, format: :json)
end
