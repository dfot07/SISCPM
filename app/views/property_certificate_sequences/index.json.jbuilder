json.array!(@property_certificate_sequences) do |property_certificate_sequence|
  json.extract! property_certificate_sequence, :id, :user_id, :sequence, :date_sequence
  json.url property_certificate_sequence_url(property_certificate_sequence, format: :json)
end
