class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :parents, :picture, :string
  end
end
