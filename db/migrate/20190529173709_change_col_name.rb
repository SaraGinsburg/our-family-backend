class ChangeColName < ActiveRecord::Migration[5.0]
  def change
    rename_column :siblings, :name, :first_name
  end
end
