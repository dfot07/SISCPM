json.array!(@request_sequence_properties) do |request_sequence_property|
  json.extract! request_sequence_property, :id, :user_id, :sequence, :date_sequence
  json.url request_sequence_property_url(request_sequence_property, format: :json)
end
