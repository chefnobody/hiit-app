class AddWeightToWorkoutMovement < ActiveRecord::Migration[5.0]
  def change
    add_column :workout_movements, :weight, :integer, null: true, default: nil
  end
end
