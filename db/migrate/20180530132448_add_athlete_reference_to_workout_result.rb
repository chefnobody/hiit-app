class AddAthleteReferenceToWorkoutResult < ActiveRecord::Migration[5.0]
  def change
    add_reference :workout_results, :athletes, foreign_key: true
  end
end
