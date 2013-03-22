class AddPlaneIdToSeats < ActiveRecord::Migration
  def change
    add_column :seats, :plane_id, :integer
  end
end
