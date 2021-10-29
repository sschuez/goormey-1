class AddServesToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :serves, :integer
  end
end
