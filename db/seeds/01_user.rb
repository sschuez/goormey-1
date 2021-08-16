progressbar = ProgressBar.create(
  title: 'Creating users',
  total: USERS_TO_CREATE
)

USERS_TO_CREATE.times do
  get_name = [true, false].sample
  if get_name
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    username = "#{first_name}_#{last_name}"
  else
    first_name = ""
    last_name = ""
    username = "#{Faker::Name.first_name}.#{Faker::Name.last_name}"
  end
  show_username = [true, false].sample
  User.create email: Faker::Internet.safe_email,
              password: "aaaaaa",
              password_confirmation: "aaaaaa",
              first_name: first_name,
              last_name: last_name,
              username: username,
              show_username: show_username
  progressbar.increment
end