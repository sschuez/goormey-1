# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
USERS_TO_CREATE = 5
RECIPES_TO_CREATE = 50
INGREDIENTS_ON_EACH_RECIPE = 5

Dir[Rails.root.join('db', 'seeds', '*.rb')].sort.each do |file|
  require file
end

