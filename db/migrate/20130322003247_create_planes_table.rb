class CreatePlanesTable < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :name
      t.integer :num_rows
      t.integer :num_columns
      t.timestamps
    end
  end
end
