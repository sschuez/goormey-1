return unless Rails.env.development?

USERS_TO_CREATE = 10
RECIPES_TO_CREATE = 50
INGREDIENTS_ON_EACH_RECIPE = 5
INSTRUCTIONS_ON_EACH_RECIPE = 5

Dir[Rails.root.join('db', 'seeds', '*.rb')].sort.each do |file|
  require file
end

