class RemoveColumsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :username, :string
    remove_column :users, :show_username, :boolean
  end
end
