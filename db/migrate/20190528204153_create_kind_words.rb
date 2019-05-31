class CreateKindWords < ActiveRecord::Migration[5.0]
  def change
    create_table :kind_words do |t|
      t.integer :sibling_id
      t.date :when
      t.string :what
      t.string :to_whom
      t.integer :points

      t.timestamps
    end
  end
end
