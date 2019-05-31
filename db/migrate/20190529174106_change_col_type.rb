class ChangeColType < ActiveRecord::Migration[5.0]
  def change
    change_column :siblings, :birthdate, :date
  end
end
