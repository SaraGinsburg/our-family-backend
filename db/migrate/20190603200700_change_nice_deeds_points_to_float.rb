class ChangeNiceDeedsPointsToFloat < ActiveRecord::Migration[5.0]
  def change
      change_column :nice_deeds, :points, :float
  end
end
