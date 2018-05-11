class AddMovementRefToWorkoutMovements < ActiveRecord::Migration[5.0]
  def change
    add_reference :workout_movements, :movements, foreign_key: true
  end
end
