json.array!(@properties) do |property|
  json.extract! property, :id, :user_id, :request_property_id, :register, :repertory, :date_register
  json.url property_url(property, format: :json)
end
