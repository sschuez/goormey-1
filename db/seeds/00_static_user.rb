puts "Creating static users"

User.create email: "stephens@hey.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa",
            admin: true

User.create email: "schuzste@gmail.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa",
            admin: false

            
