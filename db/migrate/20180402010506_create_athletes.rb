class CreateAthletes < ActiveRecord::Migration[5.0]
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.date :age

      t.timestamps
    end
  end
end
