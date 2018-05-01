class RemoveWorkoutMovementFromWorkout < ActiveRecord::Migration[5.0]
  def change
    remove_reference :workouts, :workout_movement, foreign_key: true
  end
end
