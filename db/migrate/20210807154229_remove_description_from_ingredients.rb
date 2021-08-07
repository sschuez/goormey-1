class RemoveDescriptionFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :description, :string
  end
end
