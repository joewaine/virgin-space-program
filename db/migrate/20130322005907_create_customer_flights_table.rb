class CreateCustomerFlightsTable < ActiveRecord::Migration
  def change
    create_table :customers_flights, :id => false do |t|
      t.integer :customer_id
      t.integer :flight_id
    end
  end
end
