progressbar = ProgressBar.create(
  title: 'Creating ingredients',
  total: Recipe.count * INGREDIENTS_ON_EACH_RECIPE
)

Recipe.all.each do |recipe|
  INGREDIENTS_ON_EACH_RECIPE.times do
    recipe.ingredients.create(
      description: Faker::Food.ingredient
      )
    progressbar.increment
  end
end