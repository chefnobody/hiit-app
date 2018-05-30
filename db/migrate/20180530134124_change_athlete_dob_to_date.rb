class ChangeAthleteDobToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :athletes, :dob, :date
  end
end
