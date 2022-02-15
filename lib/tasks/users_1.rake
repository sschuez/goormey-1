namespace :users_1 do
  desc "TODO"
  task generate_users: :environment do
    password = "aaaaaa"
    users = [
      # { :first_name => "Christian", :last_name => "Paris" },
      # { :first_name => "Fancis", :last_name => "Brunner" },
      # { :first_name => "Maria", :last_name => "Brunner" },
      # { :first_name => "Janette", :last_name => "Auer" },
      # { :first_name => "Marc", :last_name => "Walter" },
      { :first_name => "Hanspeter", :last_name => "Friedrich" },
      { :first_name => "Jacob", :last_name => "Cruz" },
      { :first_name => "Alexandra", :last_name => "Mince" }
    ]
  
    users.each do | user |
      puts "-------------------"
      puts "Creating new user"
      puts "Email: #{user[:first_name].downcase}.#{user[:last_name].downcase}@goormey.com"
      puts "First name: #{user[:first_name]}"
      puts "Last name: #{user[:last_name]}"
      puts "Password: #{password}"
    
      User.create email: "#{user[:first_name].downcase}.#{user[:last_name].downcase}@goormey.com",
                  first_name: user[:first_name],
                  last_name: user[:last_name],
                  password: password,
                  password_confirmation: password
      puts "Created profile for #{user[:first_name]} #{user[:last_name]}."  
    end

  end
end
