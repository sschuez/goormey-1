class RemoveUsersFromSubmissions < ActiveRecord::Migration[7.0]
  def change
    remove_reference :submissions, :user, null: false, foreign_key: true
  end
end
