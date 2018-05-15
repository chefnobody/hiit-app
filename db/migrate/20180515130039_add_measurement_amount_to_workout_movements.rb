class AddMeasurementAmountToWorkoutMovements < ActiveRecord::Migration[5.0]
  def change
    add_column :workout_movements, :measurement_amount, :integer
  end
end
