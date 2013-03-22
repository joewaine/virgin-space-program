class RemoveAdminTable < ActiveRecord::Migration
  def change
    drop_table :administrators
    drop_table :customers
    drop_table :customers_flights
  end
end
