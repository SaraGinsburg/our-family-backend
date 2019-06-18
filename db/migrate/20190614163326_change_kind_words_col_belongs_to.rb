class ChangeKindWordsColBelongsTo < ActiveRecord::Migration[5.0]
  def change
    rename_column :kind_words, :sibling_id, :user_id
  end
end
