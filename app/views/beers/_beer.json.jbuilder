json.extract! beer, :id, :name, :description, :note, :created_at, :updated_at
json.url beer_url(beer, format: :json)