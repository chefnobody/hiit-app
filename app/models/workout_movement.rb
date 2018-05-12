class WorkoutMovement < ApplicationRecord
  belongs_to :workout
  # movement_id (what movement. ex: run, thruster, burpee)
  # measurement_types_id (how to measure the movement) ex: { name: "Distance", value: 0 }

end
