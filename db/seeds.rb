puts "Seed starting"
classes = [Booking, Bike, User]
classes.each do |c|
  c.destroy_all
end
puts "All records deleted, creating new records"

user1 = User.create(first_name:"Lotte", last_name:"Christensen", email:"lottechr@hotmail.com", password:"123456", address:"Sigbrits Allé 3 1tv, 2300 Copenhagen", phone:"50 40 30 23", postal_code: "2300", city: "Copenhagen")
bike1 = Bike.create(brand:"Nihola", address:"Sigbrits Allé 3, 2300 Copenhagen")
bike1.user = user1

url11 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498137541/pzdop9obk04uu0wroe85.jpg"
url12 = "http://res.cloudinary.com/dchxwllhb/image/upload/v1498142634/ayhckdlkzhn7jng3wd8m.jpg"
bike1.photo_urls = [url11, url12]

puts "Seed completed"
