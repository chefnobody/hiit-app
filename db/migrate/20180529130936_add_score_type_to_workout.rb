class AddScoreTypeToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_reference :workouts, :score_types, foreign_key: true
  end
end
