json.extract! person, :id, :name, :last_name, :father_name, :email, :phone, :data, :firm_id, :created_at, :updated_at
json.url person_url(person, format: :json)
