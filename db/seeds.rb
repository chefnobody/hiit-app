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
single_unders = Movement.create(name: "Single Unders", movement_types_id: cardio.id)
double_unders = Movement.create(name: "Double Unders", movement_types_id: cardio.id)

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
fran = Workout.create(name: "Fran", description: "21, 15, 9: Thrusters and Pull Ups for time.")
fran.workout_movements = [
  WorkoutMovement.create(movements_id: thruster.id, measurement_types_id: reps.id, measurement_amount: 21, weight: 43),
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 21),
  WorkoutMovement.create(movements_id: thruster.id, measurement_types_id: reps.id, measurement_amount: 15, weight: 43),
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 15),
  WorkoutMovement.create(movements_id: thruster.id, measurement_types_id: reps.id, measurement_amount: 9, weight: 43),
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 9),
]