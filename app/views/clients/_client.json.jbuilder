json.extract! client, :id, :name, :edrpou, :email, :ipn, :persons, :data, :created_at, :updated_at
json.url client_url(client, format: :json)
