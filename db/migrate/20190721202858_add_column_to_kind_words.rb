class AddColumnToKindWords < ActiveRecord::Migration[5.0]
  def change
    add_column :kind_words, :approved, :boolean

  end
end
