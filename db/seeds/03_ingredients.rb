progressbar = ProgressBar.create(
  title: 'Creating ingredients',
  total: Recipe.count * INGREDIENTS_ON_EACH_RECIPE
)

measurements = []
Ingredient::MEASUREMENTS.each do |k,v|
  measurements << k
end

Recipe.all.each do |recipe|
  INGREDIENTS_ON_EACH_RECIPE.times do
    recipe.ingredients.create(
      amount: rand(1..100),
      measurement: measurements.sample,
      name: Faker::Food.ingredient
      )
    progressbar.increment
  end
end