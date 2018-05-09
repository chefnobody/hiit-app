class MovementType < ApplicationRecord
  has_one :movement, inverse_of: :movement_type
end
