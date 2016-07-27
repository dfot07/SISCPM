json.array!(@request_acts) do |request_act|
  json.extract! request_act, :id, :user_id, :type_act, :date_act, :description_act, :amount_act, :entity, :city_entity, :sequence, :date_sequence
  json.url request_act_url(request_act, format: :json)
end
