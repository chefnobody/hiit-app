class ChangeAthleteAgeToDateOfBirth < ActiveRecord::Migration[5.0]
  def change
    remove_column :athletes, :age, :integer
    add_column :athletes, :dob, :datetime
  end
end
