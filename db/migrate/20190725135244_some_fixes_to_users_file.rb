class SomeFixesToUsersFile < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :points_earned, :integer
    remove_column :users, :points, :float
  end
end
