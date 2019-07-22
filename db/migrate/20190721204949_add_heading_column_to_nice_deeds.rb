class AddHeadingColumnToNiceDeeds < ActiveRecord::Migration[5.0]
  def change
    add_column :nice_deeds, :heading, :string
  end
end
