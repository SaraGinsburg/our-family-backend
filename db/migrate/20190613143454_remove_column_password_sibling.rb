class RemoveColumnPasswordSibling < ActiveRecord::Migration[5.0]
  def change
    change_column :siblings, :password, :password
  end
end
