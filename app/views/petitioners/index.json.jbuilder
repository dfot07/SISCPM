json.array!(@petitioners) do |petitioner|
  json.extract! petitioner, :id, :user_id, :request_property_id, :last_name, :name, :document, :civil_status, :address, :phone, :email, :infodigital
  json.url petitioner_url(petitioner, format: :json)
end
