class CreateMeasurementTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end

    add_reference :workout_movements, :measurement_types, foreign_key: true

  end
end
