class AddColumnToSiblings < ActiveRecord::Migration[5.0]
  def change
    add_column :siblings, :parent_id, :integer
  end
end
