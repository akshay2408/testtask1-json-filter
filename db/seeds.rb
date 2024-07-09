# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create users
users = [
  {
    name: "John",
    email: "john@gmail.com",
    campaigns_list: [
      { campaign_name: "cam1", campaign_id: "id1" },
      { campaign_name: "cam2", campaign_id: "id2" }
    ]
  },
  {
    name: "Jane",
    email: "jane@gmail.com",
    campaigns_list: [
      { campaign_name: "cam1", campaign_id: "id1" },
      { campaign_name: "cam3", campaign_id: "id3" }
    ]
  },
  {
    name: "Alice",
    email: "alice@gmail.com",
    campaigns_list: [
      { campaign_name: "cam4", campaign_id: "id4" }
    ]
  }
]

users.each do |user|
  User.create!(user)
end