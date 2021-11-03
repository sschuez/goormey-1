namespace :ingredient_positions do
  desc "TODO"
  task import_positions: :environment do
    Recipe.all.each do |recipe|
      i = 0
      recipe.ingredients.each do |ingredient|
        i += 1
        ingredient.position = i
      end
      recipe.save!
      puts "___________________________________"
      puts "#{recipe.name} updated as follows:"
      recipe.ingredients.each do |ingredient|
        puts "#{ingredient.description} - Position: #{ingredient.position}"
      end
    end
  end

end
