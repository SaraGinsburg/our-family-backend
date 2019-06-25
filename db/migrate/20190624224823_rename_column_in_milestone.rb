class RenameColumnInMilestone < ActiveRecord::Migration[5.0]
  def change
    rename_column :milestones, :sibling_id, :user_id
  end
end
