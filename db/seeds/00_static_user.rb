puts "Creating static users"

User.create email: "stephens@hey.com",
            password: "password",
            password_confirmation: "password",
            first_name: "Stephen",
            last_name: "Schüz",
            admin: true

User.create email: "schuzste@gmail.com",
            password: "password",
            password_confirmation: "password",
            first_name: "Stephen",
            last_name: "Schüz"            

            
