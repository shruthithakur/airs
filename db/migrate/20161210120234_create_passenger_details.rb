class CreatePassengerDetails < ActiveRecord::Migration
  def change
    create_table :passenger_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :nationality
      t.string :passport_number

      t.timestamps null: false
    end
  end
end
