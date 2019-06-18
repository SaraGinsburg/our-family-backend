class RenameSiblingsToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :siblings, :users
  end
end
