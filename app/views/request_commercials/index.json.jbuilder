json.array!(@request_commercials) do |request_commercial|
  json.extract! request_commercial, :id, :user_id, :certificate, :request_certificate, :comment, :sequence_request, :sequence_certificate, :date_sequence, :date_certificate, :other_type, :other_certificate
  json.url request_commercial_url(request_commercial, format: :json)
end
