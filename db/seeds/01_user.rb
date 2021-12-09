progressbar = ProgressBar.create(
  title: 'Creating users',
  total: USERS_TO_CREATE
)

USERS_TO_CREATE.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
  User.create email: Faker::Internet.safe_email,
              password: "aaaaaa",
              password_confirmation: "aaaaaa",
              first_name: first_name,
              last_name: last_name
  progressbar.increment
end