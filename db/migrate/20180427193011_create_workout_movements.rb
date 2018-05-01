class CreateWorkoutMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_movements do |t|

      t.timestamps
    end
  end
end
