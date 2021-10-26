class ChangeNameToDescription < ActiveRecord::Migration[6.1]
  def change
    rename_column :ingredients, :name, :description
  end
end
