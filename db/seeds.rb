# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(
  name: "Nujabes girl",
  email: "test@docomo.com",
  password: "password",
  admin: true,
  # image: File.open(“app/assets/images/16083C3F-3C68-404A-AAE9-E42169BFDCBB_1_105_c.jpeg”),
)
user2 = User.create!(
  name: "tsuru",
  email: "test2@docomo.com",
  password: "password",
  # image: File.open(“app/assets/images/B8C5C614-41A0-4529-9644-6F354FE151E4_1_105_c.jpeg”),
)
