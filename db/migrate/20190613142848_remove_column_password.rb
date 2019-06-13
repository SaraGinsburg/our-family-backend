class RemoveColumnPassword < ActiveRecord::Migration[5.0]
  def change
    remove_column :siblings, :password
  end
end
