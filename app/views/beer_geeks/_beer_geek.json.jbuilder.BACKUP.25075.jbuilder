
json.extract! beer_geek, :id, :nom, :desc, :created_at, :updated_at

json.url beer_geek_url(beer_geek, format: :json)