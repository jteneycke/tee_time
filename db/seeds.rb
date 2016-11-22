require "faker"

10.times do
  Club.create!(name: Faker::Company.name + " Country Club")
end

10.times do |number|
  User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user#{number}@example.com",
    password: "asdf;lkj",
    password_confirmation: "asdf;lkj"
  })
end
