class AddWorkoutMovementToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_reference :workouts, :workout_movement, foreign_key: true
  end
end
