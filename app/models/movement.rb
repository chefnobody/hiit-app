class Movement < ApplicationRecord


  
  # movements have a measurement_type (measurement_types_id)
  # either :
  # - distance: (meters)
  # - rep_count: (integer)

  # movements have a measurement_value (integer)
  # - if distance (value is meters)
  # - if rep_count (value is number of repetitions)

end
