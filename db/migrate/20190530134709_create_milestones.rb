class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.date :when
      t.string :what
      t.string :picture
      t.integer :sibling_id

      t.timestamps
    end
  end
end
