progressbar = ProgressBar.create(
  title: 'Creating recipes',
  total: RECIPES_TO_CREATE
)

RECIPES_TO_CREATE.times do
  Recipe.create(
    user_id: User.ids.sample,
    name: Faker::Food.dish,
    description: Faker::Food.description,
    serves: rand(1..5),
    wizard_complete: true
  )
  progressbar.increment
end