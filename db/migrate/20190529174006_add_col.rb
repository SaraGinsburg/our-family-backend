class AddCol < ActiveRecord::Migration[5.0]
  def change
    add_column :siblings, :last_name, :string
  end
end
