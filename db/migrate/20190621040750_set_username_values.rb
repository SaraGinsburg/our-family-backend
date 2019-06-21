class SetUsernameValues < ActiveRecord::Migration[5.0]
  def change
    User.update_all("username=first_name")
  end
end
