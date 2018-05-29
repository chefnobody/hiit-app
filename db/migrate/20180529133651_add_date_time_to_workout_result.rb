class AddDateTimeToWorkoutResult < ActiveRecord::Migration[5.0]
  def change
    add_column :workout_results, :result_date, :datetime
  end
end
