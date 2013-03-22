class CreateFlightsTable < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :origin
      t.string :destination
      t.string :number
      t.date :date
      t.integer :plane_id
      t.timestamps
    end
  end
end