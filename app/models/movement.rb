class Movement < ApplicationRecord
  # associations
  belongs_to :movement_type

  # validations
  validates :movement_type, presence: true
  validates :name, presence: true

end
