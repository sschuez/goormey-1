class AddShowUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :show_username, :boolean
  end
end
