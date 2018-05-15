class AddWorkoutIdToWorkoutMomvement < ActiveRecord::Migration[5.0]
  def change
    add_reference :workout_movements, :workout, foreign_key: true
  end
end
