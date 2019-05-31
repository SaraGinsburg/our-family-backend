class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.string :username
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
