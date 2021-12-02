namespace :rebuild_search do
  desc "TODO"
  task rebuild_search: :environment do
    PgSearch::Multisearch.rebuild(Recipe)
    puts "Rebuilt Recipe."
    PgSearch::Multisearch.rebuild(User)
    puts "Rebuilt User."
    PgSearch::Multisearch.rebuild(Instruction)
    puts "Rebuilt Instruction."
    PgSearch::Multisearch.rebuild(Ingredient)
    puts "Rebuilt Ingredient."
  end

end
