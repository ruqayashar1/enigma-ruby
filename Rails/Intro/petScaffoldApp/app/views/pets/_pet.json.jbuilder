json.extract! pet, :id, :name, :description, :created_at, :updated_at
json.url pet_url(pet, format: :json)
