# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Business.destroy_all
# Review.destroy_all
# Hour.destroy_all
# Category.destroy_all
# BusinessInfo.destroy_all


lunch = "10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&Closed&Closed"
normal = '10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 11:00 pm&10:00 am - 11:00 pm&10:00 am - 7:00 pm'

detail = "Takes Reservations:Yes&Delivery:No&Take-out:No&Accepts Credit Cards:Yes&Accepts Apple Pay:No&Accepts Google Pay:No&Accepts Bitcoin:No&Parking:Street&Bike Parking:Yes&Wheelchair Accessible:Yes&Noise Level:Average&Good for Kids:No&Good for Groups:Yes&Attire:Casual&Wi-Fi:No&Has TV:No&Caters:No"

text= "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.       Ut enim ad minim veniam."

u1 = User.create(first_name: "Michael", last_name: "Jordan", email: "jordan@gmail.com", password: "123456", zip: 12345, city: "Chicago", state: "IL")
u2 = User.create(first_name: "Michael", last_name: "Scott", email: "office@gmail.com", password: "office", zip: 12345, city: "New York", state: "NY")
u3 = User.create(first_name: "Amy", last_name: "O", email: "amy@gmail.com", password: "567890", zip: 76589, city: "Chicago", state: "IL")
u4 = User.create(first_name: "Kavian", last_name: "M", email: "mojabe@gmail.com", password: "asdfgh", zip: 94111, city: "San Francisco", state: "CA")
u5 = User.create(first_name: "Tony", last_name: "M", email: "zhang@gmail.com", password: "asdfgh", zip: 95436, city: "San Mateo", state: "CA")
u6 = User.create(first_name: "Nigel", last_name: "R", email: "canada@gmail.com", password: "asdfgh", zip: 98544, city: "Oakland", state: "CA")
u7 = User.create(first_name: "Sarah", last_name: "J", email: "lol@gmail.com", password: "asdfgh", zip: 98544, city: "Oakland", state: "CA")
u8 = User.create(first_name: "Rex", last_name: "B", email: "lmao@gmail.com", password: "betttt", zip: 95151, city: "Pomona", state: "CA")

b1 =Business.create(
  name: "Good Mong Kok Bakery",
  latitude: 37.795466,
  longitude: -122.408336,
  address: "1039 Stockton St",
  city: "San Francisco",
  state: "CA",
  zip: 94108,
  stars: nil,
  price: 1,
)
b2 = Business.create(
  name: "Wildflower Cafe",
  latitude: 37.794143,
  longitude: -122.401591,
  address: "411 Sansome Street",
  city: "San Francisco",
  state: "CA",
  zip: 94111,
  stars: 3.8,
  price: 1,
)
b3 = Business.create(
  name: "Plow",
  latitude: 37.762585,
  longitude: -122.395434,
  address: "1299 18th St.",
  city: "San Francisco",
  state: "CA",
  zip: 94107,
  stars: 4.2,
  price: 2,
)

Category.create(
  business_id: b1.id,
  category: "Bakeries",
)
Category.create(
  business_id: b1.id,
  category: "Dim Sum",
)
Category.create(
  business_id: b1.id,
  category: "Chinese",
)
Category.create(
  business_id: b2.id,
  category: "Cafe",
)
Category.create(
  business_id: b2.id,
  category: "Salad",
)
Category.create(
  business_id: b3.id,
  category: "Breakfast",
)


Hour.create(
  business_id: b1.id,
  hours: normal,
)
Hour.create(
  business_id: b2.id,
  hours: lunch,
)
Hour.create(
  business_id: b3.id,
  hours: normal,
)



BusinessInfo.create(
  business_id: b1.id,
  details: detail
)
BusinessInfo.create(
  business_id: b2.id,
  details: detail
)
BusinessInfo.create(
  business_id: b3.id,
  details: detail
)

Review.create(
  business_id: b1.id,
  user_id: u1.id,
  stars: 5,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b2.id,
  user_id: u1.id,
  stars: 2,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b1.id,
  user_id: u2.id,
  stars: 3,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b3.id,
  user_id: u4.id,
  stars: 4,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b3.id,
  user_id: u3.id,
  stars: 4,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b3.id,
  user_id: u2.id,
  stars: 4,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b1.id,
  user_id: u5.id,
  stars: 4,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b3.id,
  user_id: u5.id,
  stars: 5,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b1.id,
  user_id: u3.id,
  stars: 4,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b1.id,
  user_id: u8.id,
  stars: 3,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b3.id,
  user_id: u7.id,
  stars: 4,
  text: text,
  post_date: "08/10/2018"
)
Review.create(
  business_id: b2.id,
  user_id: u7.id,
  stars: 3,
  text: text,
  post_date: "08/10/2018"
)
