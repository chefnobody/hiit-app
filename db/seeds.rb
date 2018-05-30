# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# Units of measurement:
#  - Time is measured in seconds
#  - Distance is measured in meters
#  - Weight is mearued in kilograms
# 
# Workout references:
# http://www.colinmcnulty.com/blog/2007/11/27/named-crossfit-workouts-the-girls/
#

# Score Types
total_time = ScoreType.create(name: 'Time')
total_rounds_reps = ScoreType.create(name: 'Rounds and Reps')
emom = ScoreType.create(name: 'Every Minute on the Minute')

# Movement Types
cardio = MovementType.create(name: 'Cardio')
gymnastic = MovementType.create(name: 'Gymnastic')
barbell = MovementType.create(name: 'Barbell')
dumbbell = MovementType.create(name: 'Dumbbell')
kettlebell = MovementType.create(name: 'Kettlebell')

# Measurement Types
reps = MeasurementType.create(name: 'Repetition')
distance = MeasurementType.create(name: 'Distance')
time = MeasurementType.create(name: 'Time')

# Cardio Movements
run = Movement.create(name: 'Run', movement_types_id: cardio.id)
row = Movement.create(name: 'Row', movement_types_id: cardio.id)
swim = Movement.create(name: 'Swim', movement_types_id: cardio.id)
bike = Movement.create(name: 'Bike', movement_types_id: cardio.id)
assault_bike = Movement.create(name: 'Assault Bike', movement_types_id: cardio.id)
single_under = Movement.create(name: 'Single Under', movement_types_id: cardio.id)
double_under = Movement.create(name: 'Double Under', movement_types_id: cardio.id)
sit_up = Movement.create(name: 'Sit Up', movement_types_id: cardio.id)
air_sqt = Movement.create(name: 'Air Squat', movement_types_id: cardio.id)
box_jump = Movement.create(name: 'Box Jump', movement_types_id: cardio.id)

# Gymnastic Movements
pull_up = Movement.create(name: 'Pull Up', movement_types_id: gymnastic.id)
push_up = Movement.create(name: 'Push Up', movement_types_id: gymnastic.id)
muscle_up = Movement.create(name: 'Muscle Up', movement_types_id: gymnastic.id)
bar_muscle_up = Movement.create(name: 'Bar Muscle Up', movement_types_id: gymnastic.id)
hspu =  Movement.create(name: 'Handstand Push Up', movement_types_id: gymnastic.id)
pistol = Movement.create(name: 'Pistol', movement_types_id: gymnastic.id)

# Barbell Movements
bs = Movement.create(name: 'Back Squat', movement_types_id: barbell.id)
fs = Movement.create(name: 'Front Squat', movement_types_id: barbell.id)
ohs = Movement.create(name: 'Overhead Squat', movement_types_id: barbell.id)
thruster = Movement.create(name: 'Thruster', movement_types_id: barbell.id)
clean_n_jerk = Movement.create(name: 'Clean & Jerk', movement_types_id: barbell.id)

# Kettlebell Movements
kbs = Movement.create(name: 'Kettle Bell Swing', movement_types_id: kettlebell.id)

# Workouts

# fran - for time
fran = Workout.create(name: 'Fran', description: '21, 15, 9: Thrusters and Pull Ups for time.', score_types_id: total_time.id)
[21, 15, 9].map { |count|
  fran.workout_movements << WorkoutMovement.create(movements_id: thruster.id, measurement_types_id: reps.id, measurement_amount: count, weight: 43)
  fran.workout_movements << WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: count)
}

# annie - for time
annie = Workout.create(name: 'Annie', description: '50, 40, 30, 20, 10: Double Unders and Sit Ups', score_types_id: total_time.id)
[50, 40, 30, 20, 10].map { |count| 
  annie.workout_movements << WorkoutMovement.create(movements_id: double_under.id, measurement_types_id: reps.id, measurement_amount: count)
  annie.workout_movements << WorkoutMovement.create(movements_id: sit_up.id, measurement_types_id: reps.id, measurement_amount: count)
}

# cindy - rounds + reps
cindy = Workout.create(
  name: 'Cindy', 
  description: '5, 10, 15 Pull Ups, Push Ups and Air Squats. Time cap: 20min.', 
  time_cap: 1200,
  score_types_id: total_rounds_reps.id)
cindy.workout_movements = [
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 5),
  WorkoutMovement.create(movements_id: push_up.id, measurement_types_id: reps.id, measurement_amount: 10),
  WorkoutMovement.create(movements_id: air_sqt.id, measurement_types_id: reps.id, measurement_amount: 15)
]

# grace - for time
grace = Workout.create(name: 'Grace', description: 'Clean & Jerk: 30 reps for time.', score_types_id: total_time.id)
grace.workout_movements = [
  WorkoutMovement.create(movements_id: clean_n_jerk.id, measurement_types_id: reps.id, measurement_amount: 30),
]

# helen - for time
helen = Workout.create(name: 'Helen', description: 'Run, KB Swing and Pull Ups', score_types_id: total_time.id)
helen.workout_movements = [
  WorkoutMovement.create(movements_id: run.id, measurement_types_id: distance.id, measurement_amount: 400),
  WorkoutMovement.create(movements_id: kbs.id, measurement_types_id: reps.id, measurement_amount: 21, weight: 25),  
]

# murph - for time
murph = Workout.create(
  name: 'Murph', 
  description: 'Tons of pull ups, push ups and air squats. Smooshed between two, 1-mile runs.', 
  score_types_id: total_time.id)
murph.workout_movements = [
  WorkoutMovement.create(movements_id: run.id, measurement_types_id: distance.id, measurement_amount: 1609),
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 100),
  WorkoutMovement.create(movements_id: push_up.id, measurement_types_id: reps.id, measurement_amount: 200),
  WorkoutMovement.create(movements_id: air_sqt.id, measurement_types_id: reps.id, measurement_amount: 300),
  WorkoutMovement.create(movements_id: run.id, measurement_types_id: distance.id, measurement_amount: 1609),
]

# random EMOM
body_weight_emom = Workout.create(
  name: 'EMOM Body Weight',
  description: 'Push ups, pistols, pull ups and box jumps',
  score_types_id: emom.id
)
body_weight_emom.workout_movements = [
  WorkoutMovement.create(movements_id: push_up.id, measurement_types_id: reps.id, measurement_amount: 20),
  WorkoutMovement.create(movements_id: pistol.id, measurement_types_id: reps.id, measurement_amount: 20),
  WorkoutMovement.create(movements_id: pull_up.id, measurement_types_id: reps.id, measurement_amount: 15),
  WorkoutMovement.create(movements_id: box_jump.id, measurement_types_id: reps.id, measurement_amount: 10),
]

# athletes
aaron = Athlete.create(first_name: "Aaron", last_name: "Connolly", dob: DateTime.new(1980, 2, 23))

# workout results
fran_result = WorkoutResult.create(workout_id: fran.id, value: 491, result_date: DateTime.new(2012, 2, 23, 10, 0, 0), athletes_id: aaron.id)
murph_result = WorkoutResult.create(workout_id: murph.id, value: 2940, result_date: DateTime.new(2012, 2, 23, 10, 0, 0), athletes_id: aaron.id)
annie_result = WorkoutResult.create(workout_id: annie.id, value: 439, result_date: DateTime.new(2011, 1, 18, 10, 0, 0), athletes_id: aaron.id)


# TODO:
#------
# - model an athelete that posts results.
# - what about male/female weights?
# - what about scaling weights/distances/times for each measurement?
# - how do we model the EMOM style workouts? Or is that just a function of how we parse a provided score?
# - how do we model the Rounds + Reps style workouts? Also, is this just a function of parsing the provided score?
# - does this model allow us to do splits/summaries for each workout_movement 
