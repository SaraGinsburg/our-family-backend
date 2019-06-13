class AddColumnPasswordDigest < ActiveRecord::Migration[5.0]
  def change
    add_column :siblings, :password_digest, :string
  end
end
