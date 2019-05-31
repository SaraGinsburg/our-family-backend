class CreateNiceDeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :nice_deeds do |t|
      t.integer :sibling_id
      t.date :when
      t.string :what
      t.string :to_whom
      t.string :picture
      t.integer :points

      t.timestamps
    end
  end
end
