class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :user_name, :username
  end
end
