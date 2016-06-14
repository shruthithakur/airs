class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :flight_name
      t.string :departure_location
      t.string :departure_date
      t.string :departure_time
      t.string :arrival_location
      t.string :arrival_date
      t.string :arrival_time

      t.timestamps null: false
    end
  end
end
