class AddWizardCompleteToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :wizard_complete, :boolean
  end
end
