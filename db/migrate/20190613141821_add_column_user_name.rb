class AddColumnUserName < ActiveRecord::Migration[5.0]
  def change
    add_column :siblings, :username, :string
  end
end
