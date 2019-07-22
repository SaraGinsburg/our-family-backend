class ChangeTypeOfWhat < ActiveRecord::Migration[5.0]
  def change
    change_column :kind_words, :what, :text
    change_column :nice_deeds, :what, :text
    change_column :milestones, :what, :text

  end
end
