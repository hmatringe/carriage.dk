require 'faker'
puts "Seed starting"
classes = [Rental, Bike, User]
classes.each do |c|
  c.destroy_all
end
puts "All records deleted"

puts "Creating new users"

user1 = User.create(
      email:                 "lottechr@hotmail.com",
      password:              "123456",
      first_name:            "Lotte",
      last_name:             "Christensen",
      profile_description:   "",
      address:               "Sigbrits Allé 3 1tv, 2300 Copenhagen",
      phone:                 "50 40 30 23",
      postal_code:           "2300",
      city:                  "Copenhagen",
      country:               "DK"
      )
user2 = User.create(
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
      )
user3 = User.create(
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
      )
user4 = User.create(
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
      )
user5 = User.create(
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
      )
user6 = User.create(
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
      )
user7 = User.create(
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
      )
user8 = User.create(
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
      )
user9 = User.create(
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
      )
user10 = User.create(
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
      )
user11 = User.create(
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
      )
puts 'Users created'
puts 'Creating bikes'
bike1 = Bike.create(
  brand:                "Nihola",
  address:              "Sigbrits Allé 3, 2300 Copenhagen",
  price_Øres:           30000,
  brand_sku:            "Testsku",
  description:          "",
  description_title:    "",
  caption:              "Super bike!",
  zip_code:             "2300",
  city:                 "Copenhagen",
  country:              "DK",
  brand_model:          "",
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
bike1.save
url_bike_1_1 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498137541/pzdop9obk04uu0wroe85.jpg"
url_bike_1_2 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498142634/ayhckdlkzhn7jng3wd8m.jpg"
bike1.photo_urls = [url_bike_1_1, url_bike_1_2]

bike2 = Bike.create(
  brand:                "Christiana Bike",
  address:              "Sankt Peders Stræde 34, 1453 København",
  price_Øres:           28000,
  brand_sku:            "3121E",
  description:          "Christianiacykel med elmotor. Den perfekte kombination af tidsløst design og og let tråd igennem byen. Det føles som om du altid har medvind. Der er god plads i kassen og de valgte materialer er varme, bløde og venlige. Den fås som tilvalg med straight kasse, som er særlig velegnet til 4 børn. Kassen kan tilvælges autolakeret sort, rød, lyseblå, grøn, gul, creme ligesom der er mulighed for dør, støtteben, kaleche, bænk, klapsæde og meget andet.",
  description_title:    "Christianiacykel med elmotor",
  caption:              "Very practical",
  zip_code:             "1453",
  city:                 "Copenhagen",
  country:              "DK",
  brand_model:          "Christiania Bike Light m. elmotor",
  renter_must_have_experience_driving_cargo_bikes:  false,
  renter_must_have_experience_cycling_in_the_city:  false,
  renter_can_be_a_company:                          false,
  has_seatbelt:                                     true,
  has_rain_cover:                                   true,
  box_has_bench:                                    true,
  is_electric:                                      true,
  children_seating_capacity: 2,
  gears_set:            "",
  light_set:            "",
  lock_set:             "",
  box_dimensions:       "",
  state:                "like brand new"
  )
bike2.user = user2
bike2.save
url_bike_2_1 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498740810/christiana_3121E_1_hrv4fk.jpg"
url_bike_2_2 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498740803/christiana_3121E_2_lb1fuh.jpg"
bike2.photo_urls = [url_bike_2_1, url_bike_2_2]

bike3 = Bike.create(
  brand:                "Christiana Bike",
  address:              "Nansensgade 59, 1366 København K",
  price_Øres:           32000,
  brand_sku:            "3108",
  description:          "Christianiacykel med ekstra lang kasse på 108 cm. Cykelen er velegnet, hvis man ønsker ekstra god plads til børn eller varer. Der er plads til 6 børn, hvilket gør den ideelt til børneinstitutioner. Cyklen er også et god udgangspunkt for at bygge specialcykler til erhvervsbrug. Den fås med straight kasse, som er 50 cm høj hele vejen rundt. Kassen kan tilvælges autolakeret sort, rød, lyseblå, grøn, gul, creme ligesom der er mulighed for dør, støtteben, kaleche, bænk, klapsæde og meget andet.",
  description_title:    "Min Christianiacykel",
  caption:              "Great for a week end.",
  zip_code:             "1366",
  city:                 "Copenhagen",
  country:              "DK",
  brand_model:          "Christianiabike Light +30",
  renter_must_have_experience_driving_cargo_bikes:  false,
  renter_must_have_experience_cycling_in_the_city:  false,
  renter_can_be_a_company:                          false,
  has_seatbelt:                                     true,
  has_rain_cover:                                   true,
  box_has_bench:                                    true,
  is_electric:                                      true,
  children_seating_capacity: 2,
  gears_set:            "",
  light_set:            "",
  lock_set:             "",
  box_dimensions:       "",
  state:                "like brand new"
  )
bike3.user = user3
bike3.save
url_bike_3_1 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498740802/christiana_3108_1_bsot3j.jpg"
bike3.photo_urls = [url_bike_3_1]

bike4 = Bike.create(
  brand:                "Christiania Bike",
  address:              "Nørregade 34, 1165 København K",
  price_Øres:           40000,
  brand_sku:            "3100",
  description:          "Super large box! Can fit a lot of boxes... or kids :)",
  description_title:    "Large capacity",
  caption:              "Super bike!",
  zip_code:             "1165",
  city:                 "Copenhagen",
  country:              "DK",
  brand_model:          "Christianiabike L-Box",
  renter_must_have_experience_driving_cargo_bikes:  true,
  renter_must_have_experience_cycling_in_the_city:  true,
  renter_can_be_a_company:                          true,
  has_seatbelt:                                     false,
  has_rain_cover:                                   false,
  box_has_bench:                                    false,
  is_electric:                                      false,
  children_seating_capacity: 3,
  gears_set:            "",
  light_set:            "",
  lock_set:             "",
  box_dimensions:       "",
  state:                "Has lived a bit, but works like a charm"
  )
bike4.user = user4
bike4.save
url_bike_4_1 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498740801/christiana_3100_u1tgs9.jpg"
bike4.photo_urls = [url_bike_4_1]

bike5 = Bike.create(
  brand:                "Christiana Bike",
  address:              "Nørregade 8, 1165 København",
  price_Øres:           45000,
  brand_sku:            "3103",
  description:          "Christianiabike S-box er målrettet til transport af kørestolsbrugere. Den er udviklet til kørsel med multihandicappede børn. Ladet kan nemt omdannes til en rampe, hvor kørestolen køres op/ned. Kørestolen fastspændes med en kraftig sikkerhedssele. Der er mulighed for, efter ønske, at få tilvirket individuel Bugattikaleche og bænk.",
  description_title:    "Transport af kørestolsbrugere",
  caption:              "Super bike!",
  zip_code:             "1165",
  city:                 "Copenhagen",
  country:              "DK",
  brand_model:          "Christianiabike S-Box",
  renter_must_have_experience_driving_cargo_bikes:  true,
  renter_must_have_experience_cycling_in_the_city:  true,
  renter_can_be_a_company:                          false,
  has_seatbelt:                                     false,
  has_rain_cover:                                   true,
  box_has_bench:                                    false,
  is_electric:                                      false,
  children_seating_capacity: 0,
  gears_set:            "",
  light_set:            "",
  lock_set:             "",
  box_dimensions:       "",
  state:                "Very good state"
  )
bike5.user = user5
bike5.save
url_bike_5_1 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498740801/christiana_3103_1_s7lgvg.jpg"
bike5.photo_urls = [url_bike_5_1]
puts "Seed completed"
