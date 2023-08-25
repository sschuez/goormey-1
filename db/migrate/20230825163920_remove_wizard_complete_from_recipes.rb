class RemoveWizardCompleteFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :wizard_complete, :boolean
  end
end
