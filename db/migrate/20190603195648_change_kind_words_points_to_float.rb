class ChangeKindWordsPointsToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :kind_words, :points, :float
  end
end
