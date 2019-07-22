class RenameColumnToWhom < ActiveRecord::Migration[5.0]
  def change
    rename_column :kind_words, :who, :who
    rename_column :nice_deeds, :who, :who
  end
end
