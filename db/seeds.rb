# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movement Types
cardio = MovementType.create(name: 'Cardio')
gymnastic = MovementType.create(name: 'Gymnastic')
barbell = MovementType.create(name: 'Barbell')
dumbbell = MovementType.create(name: 'Dumbbell')
kettlebell = MovementType.create(name: 'Kettlebell')

# Measurement Types
reps = MeasurementType.create(name: "Repetition")
distance = MeasurementType.create(name: "Distance")
time = MeasurementType.create(name: "Time")

# Cardio Movements
run = Movement.create(name: "Run", movement_types_id: cardio.id)
row = Movement.create(name: "Row", movement_types_id: cardio.id)
swim = Movement.create(name: "Swim", movement_types_id: cardio.id)
bike = Movement.create(name: "Bike", movement_types_id: cardio.id)
assault_bike = Movement.create(name: "Assault Bike", movement_types_id: cardio.id)
single_under = Movement.create(name: "Single Under", movement_types_id: cardio.id)
double_under = Movement.create(name: "Double Under", movement_types_id: cardio.id)
sit_up = Movement.create(name: "Sit Up", movement_types_id: cardio.id)
air_sqt = Movement.create(name: "Air Squat", movement_types_id: cardio.id)

# Gymnastic Movements
pull_up = Movement.create(name: "Pull Up", movement_types_id: gymnastic.id)
push_up = Movement.create(name: "Push Up", movement_types_id: gymnastic.id)
muscle_up = Movement.create(name: "Muscle Up", movement_types_id: gymnastic.id)
bar_muscle_up = Movement.create(name: "Bar Muscle Up", movement_types_id: gymnastic.id)
hspu =  Movement.create(name: "Handstand Push Up", movement_types_id: gymnastic.id)

# Barbell Movements
bs = Movement.create(name: "Back Squat", movement_types_id: barbell.id)
fs = Movement.create(name: "Front Squat", movement_types_id: barbell.id)
ohs = Movement.create(name: "Overhead Squat", movement_types_id: barbell.id)
thruster = Movement.create(name: "Thruster", movement_types_id: barbell.id)

# Workouts

# fran - for time
fran = Workout.create(name: "Fran", description: "21, 15, 9: Thrusters and Pull Ups for time.")
[21, 15, 9].map { |count|
  fran.workout_movements << WorkoutMovement.create(movements_id: thruster.id, measurement_types_id: reps.id, measurement_amount: count, weight: 43)
  fran.workout_movements << WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: count)
}

# annie - for time
annie = Workout.create(name: "Annie", description: "50, 40, 30, 20, 10: Double Unders and Sit Ups")
[50, 40, 30, 20, 10].map { |count| 
  annie.workout_movements << WorkoutMovement.create(movements_id: double_under.id, measurement_types_id: reps.id, measurement_amount: count)
  annie.workout_movements << WorkoutMovement.create(movements_id: sit_up.id, measurement_types_id: reps.id, measurement_amount: count)
}

# cindy - rounds + reps
# timecap is in seconds.
cindy = Workout.create(name: "Annie", description: "5, 10, 15 Pull Ups, Push Ups and Air Squats. Time cap: 20min.", time_cap: 1200)
cindy.workout_movements = [
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 5),
  WorkoutMovement.create(movements_id: push_up.id, measurement_types_id: reps.id, measurement_amount: 10),
  WorkoutMovement.create(movements_id: air_sqt.id, measurement_types_id: reps.id, measurement_amount: 15)
]

# murph - for time
murph = Workout.create(name: "Murph", description: "Tons of pull ups, push ups and air squats. Sandwhiched by two, 1-mile runs.")
murph.workout_movements = [
  # distance is in meters
  WorkoutMovement.create(movements_id: run.id, measurement_types_id: distance.id, measurement_amount: 1609),
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 100),
  WorkoutMovement.create(movements_id: push_up.id, measurement_types_id: reps.id, measurement_amount: 200),
  WorkoutMovement.create(movements_id: air_sqt.id, measurement_types_id: reps.id, measurement_amount: 300),
  WorkoutMovement.create(movements_id: run.id, measurement_types_id: distance.id, measurement_amount: 1609),
]
