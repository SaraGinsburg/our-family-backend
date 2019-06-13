class ChangeColumnPassword < ActiveRecord::Migration[5.0]
  def change
    add_column :siblings, :password, :string
  end
end
