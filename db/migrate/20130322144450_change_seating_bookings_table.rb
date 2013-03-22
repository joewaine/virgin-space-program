class ChangeSeatingBookingsTable < ActiveRecord::Migration
  def change
    remove_column :seatbookings, :customer_id
    add_column :seatbookings, :user_id, :integer
  end
end
