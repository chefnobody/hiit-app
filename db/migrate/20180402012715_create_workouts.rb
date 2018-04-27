class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :description
      t.time :time_cap

      t.timestamps
    end
  end
end
