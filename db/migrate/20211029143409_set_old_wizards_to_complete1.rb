class SetOldWizardsToComplete1 < ActiveRecord::Migration[6.1]
  def change
    Recipe.find_each do | recipe |
      if recipe.name.blank?
        recipe.name = "Migration name given"
      end
      if recipe.description.blank?
        recipe.description = "Migration description given"
      end
      recipe.serves = 2
      recipe.wizard_complete = true
      recipe.save!
    end
  end
end
