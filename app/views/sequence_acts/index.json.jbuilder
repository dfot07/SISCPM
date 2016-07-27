json.array!(@sequence_acts) do |sequence_act|
  json.extract! sequence_act, :id, :user_id, :sequence, :date_sequence
  json.url sequence_act_url(sequence_act, format: :json)
end
