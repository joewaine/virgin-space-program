class CreateAdministratorsTable < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :role
      t.string :phone
      t.timestamps
    end
  end
end
