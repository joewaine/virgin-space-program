class ChangeUserModel < ActiveRecord::Migration
  def up
    remove_column :users, :userable_id
    remove_column :users, :userable_type
    add_column    :users, :is_admin, :boolean
  end

  def down
  end
end
