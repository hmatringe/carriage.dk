require 'faker'
puts "Seed starting"
classes = [Rental, Bike, User]
classes.each do |c|
  c.destroy_all
end
puts "All records deleted"

puts " creating new users"

10.times{User.create!(
    email:                Faker::Internet.email,
    password:             "123456",
    first_name:           Faker::Name.first_name,
    last_name:            Faker::Name.last_name,
    profile_description:  Faker::Hipster.paragraph,
    address:              Faker::Address.street_address,
    phone:                Faker::PhoneNumber.phone_number,
    postal_code:          Faker::Address.postcode,
    city:                 Faker::Address.city,
    country:              Faker::Address.country
    )}
puts 'Users created'

user1 = User.create(
  email:"lottechr@hotmail.com",
  password:"123456",
  first_name:"Lotte",
  last_name:"Christensen",
  profile_description: "",
  address:"Sigbrits Allé 3 1tv, 2300 Copenhagen",
  phone:"50 40 30 23",
  postal_code: "2300",
  city: "Copenhagen",
  country: "DK")
bike1 = Bike.create(
  brand:                "Nihola",
  address:              "Sigbrits Allé 3, 2300 Copenhagen",
  price_Øres:           30000,
  brand_sku:            "Testsku",
  description:          "",
  description_title:    "",
  caption:              "Super bike!",
  address:              "Sigbrits Allé 3 1tv, 2300 Copenhagen",
  zip_code:             "2300",
  city:                 "Copenhagen",
  country:              "DK"
  brand_model:          "",
  brand:                "",
  brand_sku:            "",
  renter_must_have_experience_driving_cargo_bikes:  false,
  renter_must_have_experience_cycling_in_the_city:  false,
  renter_can_be_a_company:                          false,
  has_seatbelt:                                     false,
  has_rain_cover:                                   false,
  box_has_bench:                                    false,
  is_electric:                                      false,
  children_seating_capacity: 2,
  gears_set:            "",
  light_set:            "",
  lock_set:             "",
  box_dimensions:       "",
  state:                "like brand new"
  )
bike1.user = user1

url_bike_1_1 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498137541/pzdop9obk04uu0wroe85.jpg"
url_bike_1_2 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498142634/ayhckdlkzhn7jng3wd8m.jpg"
bike1.photo_urls = [url_bike_1_1, url_bike_1_2]

puts "Seed completed"
