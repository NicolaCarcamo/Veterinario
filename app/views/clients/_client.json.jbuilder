json.extract! client, :id, :firstname, :lastname, :phone, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
