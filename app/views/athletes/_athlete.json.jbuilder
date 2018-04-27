json.extract! athlete, :id, :first_name, :last_name, :age, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)