class CreateSeatsTable < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :row
      t.integer :column
      t.timestamps
    end
  end
end