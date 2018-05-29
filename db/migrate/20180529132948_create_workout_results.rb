class CreateWorkoutResults < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_results do |t|
      t.references :workout, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
