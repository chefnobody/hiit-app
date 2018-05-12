class RemoveValueFromMeasurementTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :measurement_types, :value
  end
end