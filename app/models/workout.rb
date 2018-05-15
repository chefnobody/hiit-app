class Workout < ApplicationRecord
  # has 1 or more workout movements.  
  has_many :workout_movements, dependent: :destroy
  accepts_nested_attributes_for :workout_movements
end
