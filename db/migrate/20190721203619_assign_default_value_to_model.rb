class AssignDefaultValueToModel < ActiveRecord::Migration[5.0]
  def change
    change_column :kind_words, :approved, :boolean,  :default => true
    change_column :nice_deeds, :approved, :boolean, :default => true
  end
end
