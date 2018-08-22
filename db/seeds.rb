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


lunch = '10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&Closed&Closed'
normal_2 = '9:30 am - 7:00 pm&9:30 am - 7:00 pm&9:30 am - 7:00 pm&9:30 am - 7:00 pm&9:30 am - 7:00 pm&11:00 am - 10:00 pm&Closed'
normal = '10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 10:00 pm&10:00 am - 10:00 pm&10:00 am - 7:00 pm'
late = '5:00 am - 12:00am&5:00 am - 12:00am&5:00 am - 12:00am&5:00 am - 12:00am&5:00 am - 1:00 am&5:00 am - 1:00 am&5:00 am - 12:00 am'
night= 'Closed&6:00 pm - 12:00am&6:00 pm - 12:00am&6:00 pm - 12:00am&6:00 pm - 2:00 am&6:00 pm - 2:00 am&4:00 pm - 10:00 pm'

detail = "Takes Reservations:Yes&Delivery:No&Take-out:No&Accepts Credit Cards:Yes&Accepts Apple Pay:No&Accepts Google Pay:No&Accepts Bitcoin:No&Parking:Street&Bike Parking:Yes&Wheelchair Accessible:Yes&Noise Level:Average&Good for Kids:No&Good for Groups:Yes&Attire:Casual&Wi-Fi:No&Has TV:No&Caters:No"
detail_1 = "Takes Reservations:No&Delivery:Yes&Take-out:Yes&Accepts Credit Cards:Yes&Accepts Apple Pay:No&Accepts Google Pay:No&Accepts Bitcoin:No&Parking:Street&Bike Parking:Yes&Wheelchair Accessible:Yes&Noise Level:Average&Good for Kids:Yes&Good for Groups:Yes&Attire:Casual&Wi-Fi:No&Has TV:Yes&Caters:No"

bad = "This place is terrible, I have no idea why someone would recommend this place. Steer clear away from here for the sake of the children"
great = "I love this spot! This is easily the hottest place in neighborhood! I'll definitely go out of my way to bring people in! Also everyone has to try the special."
okay = "This place has decent food, it can be a bit pricey. Service was fair, but I really like the surrounding view. Atmosphere was pleasant but nothing extraordinary."
text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."
good = "I really like this place a lot! The seating was nice and the service is super friendly, the food can be a bit small at times but I think it's great. Definitely return!"
meh = "The food really is fine but the service could really use a pickup. Very little people but yet the service was so slow. If I'm craving it then I'll return but I dunno."

u1 = User.create(first_name: "Michael", last_name: "Jordan", email: "jordan@gmail.com", password: "123456", zip: 12345, city: "Chicago", state: "IL")
u2 = User.create(first_name: "Michael", last_name: "Scott", email: "office@gmail.com", password: "office", zip: 12345, city: "New York", state: "NY")
u3 = User.create(first_name: "Amy", last_name: "O", email: "amy@gmail.com", password: "567890", zip: 76589, city: "Chicago", state: "IL")
u4 = User.create(first_name: "Kavian", last_name: "M", email: "mojabe@gmail.com", password: "asdfgh", zip: 94111, city: "San Francisco", state: "CA")
u5 = User.create(first_name: "Tony", last_name: "M", email: "zhang@gmail.com", password: "asdfgh", zip: 95436, city: "San Mateo", state: "CA")
u6 = User.create(first_name: "Nigel", last_name: "R", email: "canada@gmail.com", password: "asdfgh", zip: 98544, city: "Oakland", state: "CA")
u7 = User.create(first_name: "Sarah", last_name: "J", email: "lol@gmail.com", password: "asdfgh", zip: 98544, city: "Oakland", state: "CA")
u8 = User.create(first_name: "Rex", last_name: "B", email: "lo@gmail.com", password: "bettfdtt", zip: 95151, city: "Pomona", state: "CA")
u9 = User.create(first_name: "Ziyan", last_name: "W", email: "mao@gmail.com", password: "bedtttt", zip: 95851, city: "Redwood City", state: "CA")
u10 = User.create(first_name: "Tiffany", last_name: "S", email: "huh@gmail.com", password: "beatttt", zip: 92154, city: "Pomona", state: "CA")
u11 = User.create(first_name: "Jeffrey", last_name: "C", email: "jchan@gmail.com", password: "beatttt", zip: 94108, city: "Daly City", state: "CA")
u12 = User.create(first_name: "David", last_name: "W", email: "dw33b@gmail.com", password: "ddatt88t", zip: 94108, city: "San Francisco", state: "CA")
u13 = User.create(first_name: "Jon", last_name: "E", email: "jjj@gmail.com", password: "qqdat8tt", zip: 94538, city: "Fremont", state: "CA")
u14 = User.create(first_name: "Ira", last_name: "H", email: "japa@gmail.com", password: "ddbgdst", zip: 94108, city: "San Francisco", state: "CA")
u15 = User.create(first_name: "Ruby", last_name: "M", email: "mmma@gmail.com", password: "moomiu123", zip: 94108, city: "Fremont", state: "CA")
u16 = User.create(first_name: "Mark", last_name: "K", email: "mmm@gmail.com", password: "passsss3", zip: 94108, city: "San Jose", state: "CA")
u17 = User.create(first_name: "Jennifer", last_name: "N", email: "jjffb@gmail.com", password: "pa5ssss37", zip: 94108, city: "San Bruno", state: "CA")
u18 = User.create(first_name: "Bren", last_name: "N", email: "vmjffb@gmail.com", password: "passss37", zip: 94108, city: "Houston", state: "TX")
u19 = User.create(first_name: "Joslyn", last_name: "W", email: "wwffb@gmail.com", password: "pas4sss37", zip: 94108, city: "Portland", state: "OR")
u20 = User.create(first_name: "Stephanie", last_name: "D", email: "ssdffb@mail.com", password: "passss3657", zip: 94108, city: "Tracy", state: "CA")

b1 =Business.create(
  name: "Good Mong Kok Bakery",
  latitude: 37.795466,
  longitude: -122.408336,
  address: "1039 Stockton St",
  city: "San Francisco",
  state: "CA",
  zip: 94108,
  stars: 3.8,
  phone_number: "(415)-456-7812",
  price: 1,
)
b2 = Business.create(
  name: 'Wildflower Cafe',
  latitude: 37.794143,
  longitude: -122.401591,
  address: '411 Sansome Street',
  city: 'San Francisco',
  state: 'CA',
  zip: 94111,
  stars: 4.5,
  phone_number: '(415)-466-7802',
  price: 1,
)
b3 = Business.create(
  name: 'Plow',
  latitude: 37.762585,
  longitude: -122.395434,
  address: '1299 18th St.',
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 4.2,
  phone_number: '(415)-786-1252',
  price: 2,
)
b4 = Business.create(
  name: 'Ginger Elizabeth',
  latitude: 37.7984336,
  longitude: -122.4355835,
  address: '3108 Fillmore St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94123,
  stars: 4.0,
  phone_number: '(415)-569-4857',
  price: 2
)
b5 = Business.create(
  name: "McDonald's",
  latitude: 37.789295,
  longitude: -122.407648,
  address: '441 Sutter St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 3.0,
  phone_number: '(415)-556-9802',
  price: 1
)
b6 = Business.create(
  name: 'Taco Negris',
  latitude: 37.576519,
  longitude: -121.976328,
  address: '37726 Niles Blvd',
  city: 'Fremont',
  state: 'CA',
  zip: 94503,
  stars: 4.0,
  phone_number: '(510)-766-062',
  price: 1
)
b7 = Business.create(
  name: 'Taco Bell',
  latitude: 37.778791,
  longitude: -122.392710,
  address: '710 3rd St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 2.0,
  phone_number: '(415) 979-1587',
  price: 1
)
b8 = Business.create(
  name: 'Subway',
  latitude: 37.798683,
  longitude: -122.400756,
  address: '160 Broadway',
  city: 'San Francisco',
  state: 'CA',
  zip: 94111,
  stars: 2.5,
  phone_number: '(415) 386-1913',
  price: 1
)
b9 = Business.create(
  name: 'House of Prime Rib',
  latitude: 37.7933653,
  longitude: -122.4226817,
  address: '1906 Van Ness Ave',
  city: 'San Francisco',
  state: 'CA',
  zip: 94109,
  stars: 4.5,
  phone_number: '(415) 885-4605',
  price: 3
)
b10 = Business.create(
  name: 'Rooftop 25',
  latitude: 37.778449,
  longitude: -122.394401,
  address: '25 Lusk St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 3.75,
  phone_number: '(415) 495-5875',
  price: 2
)
b11 = Business.create(
  name: 'North Beach Pizza',
  latitude: 37.800682,
  longitude: -122.407418,
  address: '1462 Grant Ave',
  city: 'San Francisco',
  state: 'CA',
  zip: 94133,
  stars: 3.33,
  phone_number: '(415) 433-2444',
  price: 2
)
b12 = Business.create(
  name: 'Super Duper Burgers',
  latitude: 37.791481,
  longitude: -122.404148,
  address: '346 Kearny St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 3.5,
  phone_number: '(415) 677-9936',
  price: 2
)
b13 = Business.create(
  name: 'Philz Coffee',
  latitude: 37.794314,
  longitude: -122.395245,
  address: '5 Embarcadero Center',
  city: 'San Francisco',
  state: 'CA',
  zip: 94111,
  stars: 4.0,
  phone_number: '(415) 321-1499',
  price: 1
)
b14 = Business.create(
  name: "Ike's Love and Sandiwches",
  latitude: 37.785065,
  longitude: -122.419652,
  address: '901 Polk St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94113,
  stars: 3.0,
  phone_number: '(415) 351-1972',
  price: 1
)
b15 = Business.create(
  name: "Zeitgeist",
  latitude: 37.769772,
  longitude: -122.422019,
  address: '199 Valencia St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94103,
  stars: 3.5,
  phone_number: '(415) 255-7505',
  price: 2
)

Category.create(
  business_id: b1.id,
  category: 'Bakeries',
)
Category.create(
  business_id: b1.id,
  category: 'Dim Sum',
)
Category.create(
  business_id: b1.id,
  category: 'Chinese',
)
Category.create(
  business_id: b2.id,
  category: 'Cafe',
)
Category.create(
  business_id: b2.id,
  category: 'Salad',
)
Category.create(
  business_id: b3.id,
  category: 'Breakfast',
)
Category.create(
  business_id: b4.id,
  category: 'Desserts',
)
Category.create(
  business_id: b4.id,
  category: 'Chocolate',
)
Category.create(
  business_id: b5.id,
  category: 'Burgers',
)
Category.create(
  business_id: b5.id,
  category: 'Fast Food',
)
Category.create(
  business_id: b6.id,
  category: 'Mexican',
)
Category.create(
  business_id: b6.id,
  category: 'Burritos',
)
Category.create(
  business_id: b7.id,
  category: 'Fast Food',
)
Category.create(
  business_id: b8.id,
  category: 'Sandwiches',
)
Category.create(
  business_id: b8.id,
  category: 'Fast Food',
)
Category.create(
  business_id: b9.id,
  category: 'Restaurant',
)
Category.create(
  business_id: b9.id,
  category: 'Steakhouse',
)
Category.create(
  business_id: b9.id,
  category: 'American',
)
Category.create(
  business_id: b5.id,
  category: 'American',
)
Category.create(
  business_id: b10.id,
  category: 'Cocktail',
)
Category.create(
  business_id: b10.id,
  category: 'Bars',
)
Category.create(
  business_id: b11.id,
  category: 'Pizza',
)
Category.create(
  business_id: b12.id,
  category: 'Burgers',
)
Category.create(
  business_id: b12.id,
  category: 'American',
)
Category.create(
  business_id: b13.id,
  category: 'Cafe',
)
Category.create(
  business_id: b14.id,
  category: 'Sandwiches',
)
Category.create(
  business_id: b15.id,
  category: 'Bars',
)
Category.create(
  business_id: b15.id,
  category: 'Burgers',
)


Hour.create(
  business_id: b1.id,
  hours: normal
)
Hour.create(
  business_id: b2.id,
  hours: lunch
)
Hour.create(
  business_id: b3.id,
  hours: normal
)
Hour.create(
  business_id: b4.id,
  hours: normal
)
Hour.create(
  business_id: b5.id,
  hours: late
)
Hour.create(
  business_id: b6.id,
  hours: normal_2
)
Hour.create(
  business_id: b7.id,
  hours: late
)
Hour.create(
  business_id: b8.id,
  hours: normal
)
Hour.create(
  business_id: b9.id,
  hours: normal
)
Hour.create(
  business_id: b10.id,
  hours: night
)
Hour.create(
  business_id: b11.id,
  hours: normal
)
Hour.create(
  business_id: b12.id,
  hours: normal
)
Hour.create(
  business_id: b13.id,
  hours: normal_2
)
Hour.create(
  business_id: b14.id,
  hours: normal
)
Hour.create(
  business_id: b15.id,
  hours: normal
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
BusinessInfo.create(
  business_id: b4.id,
  details: detail_1
)
BusinessInfo.create(
  business_id: b5.id,
  details: detail_1
)
BusinessInfo.create(
  business_id: b6.id,
  details: detail_1
)
BusinessInfo.create(
  business_id: b7.id,
  details: detail_1
)
BusinessInfo.create(
  business_id: b8.id,
  details: detail_1
)
BusinessInfo.create(
  business_id: b9.id,
  details: detail
)
BusinessInfo.create(
  business_id: b10.id,
  details: detail
)
BusinessInfo.create(
  business_id: b11.id,
  details: detail
)
BusinessInfo.create(
  business_id: b12.id,
  details: detail
)
BusinessInfo.create(
  business_id: b13.id,
  details: detail
)
BusinessInfo.create(
  business_id: b14.id,
  details: detail
)
BusinessInfo.create(
  business_id: b15.id,
  details: detail
)



Review.create(
  business_id: b1.id,
  user_id: u1.id,
  stars: 5,
  text: good,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b2.id,
  user_id: u1.id,
  stars: 4,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u2.id,
  stars: 3,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u4.id,
  stars: 4,
  text: okay,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u3.id,
  stars: 4,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u2.id,
  stars: 4,
  text: good,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u5.id,
  stars: 4,
  text: okay,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u5.id,
  stars: 5,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u3.id,
  stars: 4,
  text: good,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u8.id,
  stars: 3,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u7.id,
  stars: 4,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b2.id,
  user_id: u7.id,
  stars: 5,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u3.id,
  stars: 5,
  text: good,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u7.id,
  stars: 2,
  text: text,
  post_date: '8/14/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u2.id,
  stars: 5,
  text: text,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u5.id,
  stars: 2,
  text: text,
  post_date: '7/8/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u2.id,
  stars: 4,
  text: text,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u6.id,
  stars: 3,
  text: okay,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b6.id,
  user_id: u2.id,
  stars: 3,
  text: text,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b6.id,
  user_id: u18.id,
  stars: 4,
  text: text,
  post_date: '8/5/2018'
)
Review.create(
  business_id: b6.id,
  user_id: u16.id,
  stars: 4,
  text: text,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b7.id,
  user_id: u17.id,
  stars: 2,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b7.id,
  user_id: u9.id,
  stars: 2,
  text: meh,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b8.id,
  user_id: u10.id,
  stars: 3,
  text: text,
  post_date: '7/21/2018'
)
Review.create(
  business_id: b8.id,
  user_id: u20.id,
  stars: 2,
  text: meh,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b9.id,
  user_id: u20.id,
  stars: 5,
  text: text,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b9.id,
  user_id: u15.id,
  stars: 4,
  text: text,
  post_date: '8/2/2018'
)
Review.create(
  business_id: b9.id,
  user_id: u3.id,
  stars: 4,
  text: okay,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b9.id,
  user_id: u11.id,
  stars: 5,
  text: good,
  post_date: '8/16/2018'
)
Review.create(
  business_id: b10.id,
  user_id: u4.id,
  stars: 4,
  text: great,
  post_date: '8/7/2018'
)
Review.create(
  business_id: b10.id,
  user_id: u19.id,
  stars: 3,
  text: text,
  post_date: '8/7/2018'
)
Review.create(
  business_id: b10.id,
  user_id: u2.id,
  stars: 4,
  text: text,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b10.id,
  user_id: u1.id,
  stars: 4,
  text: good,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u3.id,
  stars: 4,
  text: great,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u10.id,
  stars: 3,
  text: text,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u15.id,
  stars: 3,
  text: meh,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b12.id,
  user_id: u19.id,
  stars: 3,
  text: meh,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b12.id,
  user_id: u5.id,
  stars: 4,
  text: good,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u6.id,
  stars: 4,
  text: good,
  post_date: '8/2/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u5.id,
  stars: 3,
  text: meh,
  post_date: '8/16/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u11.id,
  stars: 5,
  text: great,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u7.id,
  stars: 4,
  text: great,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b14.id,
  user_id: u17.id,
  stars: 3,
  text: good,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b14.id,
  user_id: u14.id,
  stars: 3,
  text: meh,
  post_date: '8/13/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u14.id,
  stars: 1,
  text: bad,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u4.id,
  stars: 5,
  text: great,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u19.id,
  stars: 4,
  text: meh,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u2.id,
  stars: 4,
  text: good,
  post_date: '8/18/2018'
)
