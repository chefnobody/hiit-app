class AddMovementTypeToMovement < ActiveRecord::Migration[5.0]
  def change
    add_reference :movements, :movement_types, foreign_key: true
  end
end
