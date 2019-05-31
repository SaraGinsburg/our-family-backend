class CreateSiblings < ActiveRecord::Migration[5.0]
  def change
    create_table :siblings do |t|
      t.string :name
      t.date :birthdate
      t.string :picture
      t.string :points_earned

      t.timestamps
    end
  end
end
