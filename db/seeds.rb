require 'faker'

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name: "Le #{Faker::Name.unique.name} ",
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w(chinese italian japanese french belgian).sample
  )
  restaurant.save #save! will show an error message if something is wrong
end