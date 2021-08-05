progressbar = ProgressBar.create(
  title: 'Creating users',
  total: USERS_TO_CREATE
)

USERS_TO_CREATE.times do
  User.create email: Faker::Internet.safe_email,
              password: "aaaaaa",
              password_confirmation: "aaaaaa",
              admin: false
  progressbar.increment
end