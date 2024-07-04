# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating users..."
users = []
10.times do
  users << User.create!(
    name: Faker::Name.name,
    cpf: 123123123,
    age: 18,
    driver_license: "A",
    car: 9090990,
    )
end
