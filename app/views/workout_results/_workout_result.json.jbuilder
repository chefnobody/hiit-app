json.extract! workout_result, :id, :workout_id, :value, :created_at, :updated_at
json.url workout_result_url(workout_result, format: :json)