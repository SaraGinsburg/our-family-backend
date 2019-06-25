class AddColHeadingTo < ActiveRecord::Migration[5.0]
  def change
    add_column :milestones, :heading, :string
  end
end
