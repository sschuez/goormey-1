puts "Creating static users"

User.create email: "stephens@hey.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa",
            username: "happy_meal",
            first_name: "Stephen",
            last_name: "Schüz",
            admin: true,
            show_username: true

User.create email: "schuzste@gmail.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa",
            username: "unhappy_meal",
            first_name: "Stephen",
            last_name: "Schüz",
            show_username: true
            

            
