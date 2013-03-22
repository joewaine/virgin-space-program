class CreateSeatbookingTable < ActiveRecord::Migration
  def change
    create_table :seatbookings do |t|
      t.integer :customer_id
      t.integer :flight_id
      t.integer :seat_id
      t.timestamps
    end
  end
end