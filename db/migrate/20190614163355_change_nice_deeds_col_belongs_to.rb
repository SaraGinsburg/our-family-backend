class ChangeNiceDeedsColBelongsTo < ActiveRecord::Migration[5.0]
  def change
    rename_column :nice_deeds, :sibling_id, :user_id
  end
end
