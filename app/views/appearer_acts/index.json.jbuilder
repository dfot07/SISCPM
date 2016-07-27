json.array!(@appearer_acts) do |appearer_act|
  json.extract! appearer_act, :id, :user, :request_act_id, :name, :type_appearer, :document, :class_appearer, :represent_appearer, :type
  json.url appearer_act_url(appearer_act, format: :json)
end
