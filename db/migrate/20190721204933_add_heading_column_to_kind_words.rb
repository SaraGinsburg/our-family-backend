class AddHeadingColumnToKindWords < ActiveRecord::Migration[5.0]
  def change
    add_column :kind_words, :heading, :string
  end
end
