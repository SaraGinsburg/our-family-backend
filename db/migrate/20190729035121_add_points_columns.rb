class AddPointsColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :kind_words, :points, :integer, default: 1
    add_column :nice_deeds, :points, :integer, default: 2
  end
end
