class AddAdminDefaultFalseToUsers < ActiveRecord::Migration[6.1]
  def up
    change_column_default :users, :admin, false
  end

  def down
    change_column_default :users, :admin, nil
  end

end
