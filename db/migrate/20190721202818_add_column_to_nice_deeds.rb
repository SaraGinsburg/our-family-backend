class AddColumnToNiceDeeds < ActiveRecord::Migration[5.0]
  def change
    add_column :nice_deeds, :approved,  :boolean
  end
end
