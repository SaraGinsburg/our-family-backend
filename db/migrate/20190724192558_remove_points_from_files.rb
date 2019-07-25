class RemovePointsFromFiles < ActiveRecord::Migration[5.0]
  def change

    remove_column :kind_words, :points, :float
    remove_column :nice_deeds, :points, :float

  end
end
