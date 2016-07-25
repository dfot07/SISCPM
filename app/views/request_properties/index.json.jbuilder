json.array!(@request_properties) do |request_property|
  json.extract! request_property, :id, :user_id, :certificate, :request_certificate, :comment, :sequence_request, :sequence_certificate
  json.url request_property_url(request_property, format: :json)
end
