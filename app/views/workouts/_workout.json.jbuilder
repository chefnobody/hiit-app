json.extract! workout, :id, :name, :description, :time_cap, :created_at, :updated_at
json.url workout_url(workout, format: :json)