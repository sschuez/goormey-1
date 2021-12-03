puts "Creating static users"

User.create email: "stephens@hey.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa",
            first_name: "Stephen",
            last_name: "Schüz",
            admin: true

User.create email: "schuzste@gmail.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa",
            first_name: "Stephen",
            last_name: "Schüz"            

            
