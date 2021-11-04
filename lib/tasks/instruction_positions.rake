namespace :instruction_positions do
  desc "TODO"
  task import_positions: :environment do
    Recipe.all.each do |recipe|
      i = 0
      recipe.instructions.each do |instruction|
        i += 1
        instruction.position = i
      end
      recipe.save!
      puts "___________________________________"
      puts "#{recipe.name} updated as follows:"
      recipe.instructions.each do |instruction|
        puts "#{instruction.description} - Position: #{instruction.position}"
      end
    end
  end

end
