class ChangeColumnTypeToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :kind_words, :who, :integer
    change_column :nice_deeds, :who, :integer
  end
end
