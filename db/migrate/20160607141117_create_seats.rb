class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :seat_id
      t.string :row
      t.string :column
      t.string :price
      t.string :status
      t.string :flight_id

      t.timestamps null: false
    end
  end
end
