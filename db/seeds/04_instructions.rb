progressbar = ProgressBar.create(
  title: 'Creating instructions',
  total: Recipe.count * INSTRUCTIONS_ON_EACH_RECIPE
)

Recipe.all.each do |recipe|
  INSTRUCTIONS_ON_EACH_RECIPE.times do
    recipe.instructions.create(
      description: Faker::Lorem.paragraph(sentence_count: rand(1..4))
      )
    progressbar.increment
  end
end