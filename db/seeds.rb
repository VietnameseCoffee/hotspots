require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Business.destroy_all
Review.destroy_all
Hour.destroy_all
Category.destroy_all
BusinessInfo.destroy_all
Image.destroy_all


lunch = '10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&Closed&Closed'
normal_7 = '9:30 am - 7:00 pm&9:30 am - 7:00 pm&9:30 am - 7:00 pm&9:30 am - 7:00 pm&9:30 am - 7:00 pm&11:00 am - 10:00 pm&Closed'
normal = '10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 9:00 pm&10:00 am - 10:00 pm&10:00 am - 10:00 pm&10:00 am - 7:00 pm'
late = '5:00 am - 12:00am&5:00 am - 12:00am&5:00 am - 12:00am&5:00 am - 12:00am&5:00 am - 1:00 am&5:00 am - 1:00 am&5:00 am - 12:00 am'
night= 'Closed&6:00 pm - 12:00am&6:00 pm - 12:00am&6:00 pm - 12:00am&6:00 pm - 2:00 am&6:00 pm - 2:00 am&4:00 pm - 10:00 pm'

detail = "Takes Reservations:Yes&Delivery:No&Take-out:No&Accepts Credit Cards:Yes&Accepts Apple Pay:No&Accepts Google Pay:No&Accepts Bitcoin:No&Parking:Street&Bike Parking:Yes&Wheelchair Accessible:Yes&Noise Level:Average&Good for Kids:No&Good for Groups:Yes&Attire:Casual&Wi-Fi:No&Has TV:No&Caters:No"
detail_casual = "Takes Reservations:No&Delivery:Yes&Take-out:Yes&Accepts Credit Cards:Yes&Accepts Apple Pay:No&Accepts Google Pay:No&Accepts Bitcoin:No&Parking:Street&Bike Parking:Yes&Wheelchair Accessible:Yes&Noise Level:Average&Good for Kids:Yes&Good for Groups:Yes&Attire:Casual&Wi-Fi:No&Has TV:Yes&Caters:No"

text = "This place was pleasant. Some of the food is surprisingly pricy for the amount given while others were absurdly cheap, very odd. I may or may not come back here again because I'm just a waffling kinda person."
ambig = "Honestly the food was all right, my friend's order was honestly bland but mine was amazing so it averages out. Now the hard part is coming to the ratings for the joint. I think what I gave is fair, because I'm a person of truth!"
bad_1 = "This place is terrible, I have no idea why someone would recommend this place. Steer clear away from here for the sake of the children"
bad_2 = "The manager there is awful! There was a hair in my order and he absolutely refused to give me a full refund! The freaking place is so expensive too, like why you gotta be so cheap, you're gonna drive customers away. It's a matter of time until they close down."
bad_3 = "Why is this place open... health inspectors need to come in and shut it down like what Dirk Nowitzki says. If you want to build your immune system, you can come here and train it."
bad_4 = "Rude customer service. Bad food, I didn't like anything here. No come back."
meh_1 = "The food really is fine but the service could really use a pickup. Very little people but yet the service was so slow. If I'm craving it then I'll return but I damn only when I really have time and want food nearby."
meh_2 = "So the server was so unenthusiastic, but he's a high school kid, I understand. Food was fine but the service was such a bummer :("
meh_3 = "My Uncle Charles Barkley said San Antonio and Pheonix does it better, always thought that man was all talk, but he spoke the truth. Just dissapointed in the taste, but will come back if I'm reeally hungry."
meh_4 = "Meh, I was disappointed by the flavors, I do like the seating arrangement here, gotta give them props for great decor. But poor selection tbh. 3/10 without rice 4/10 with rice"
okay_1 = "This place has decent food, it can be a bit pricey. Service was fair, but I really like the surrounding view. Atmosphere was pleasant but nothing extraordinary. Also beware of finding a spot to park because you are going to be fighting with people just to get your Smart Car in a corner."
okay_2 = "Bruh, I'm not sure why my friends hate this place, it's honestly okay here."
okay_3 = "If I'm hungry, I will go here. I had trouble finding this place, because the sign is being covered by the laundromat, no worries cuz I got my dope grub on and as long as my belly is happy, I'm going to be returning."
okay_4 = "First off, finding this place is really hard, I know I'm directionally challenged that was tough. Anyway it's a groovy spot around the neighborhood. Prices are cheap so i likey."
good_1 = "I really like this place a lot! The seating was nice and the service is super friendly, the food can be a bit under-portioned at times but I think it's great. Definitely will return!"
good_2 = "Place is cool, I like it, good service and good prices."
good_3 = "My buddies were always giving me a buzz about this spot, and I had to check it out. no doubt is my tummy full and heart is happy. The hype train is real here! The prices are on the verge of pricey but that's coo."
good_4 = "This is my local. I honestly feel like we have grown together. I was here the first week they opened as they were still setting up their small stand and working out their delivery times and just getting the shop running. They expanded their selections and now have their own merchandise but the quality has never dropped during this whole time."
love_1 = "I love this spot! This is easily the hottest place in neighborhood! I'll definitely go out of my way to bring people in! Also everyone has to try the special."
love_2 = 'Never thought I would say this place is to die for anywhere until now. Please for the sake of your grandparents please try this place out.'
love_3 = "This deserves more great ratings. My sister and I swung by for their weekday specials, and oh mah gawd, I have seen the heavens. The neighborhood around is pretty nice and the service is really friendly."
love_4 = "Love it love it love it. Will always be a regular."
love_bar = "This is the spot me and my buddies always go, their drinks aren't cheap and I love the atmosphere here! So many memories getting our shots down here. I wish they kept the original pool table but that's all good, I'm never changing my weekend spot as long as I'm here."
bad_bar = "This place used to be poppin, but management ruined it. Prices are jacked up and the servers are soooo ruuuude, like guurlll. I ain't down for this."

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
  name: "Chez Maman East",
  latitude: 37.762529,
  longitude: -122.396843,
  address: '1401 18th St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 5.0,
  phone_number: '(415) 655-9542',
  price: 2
)
b6 = Business.create(
  name: 'Tacos Negris',
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
b16 = Business.create(
  name: "Missouri Lounge",
  latitude: 37.859214,
  longitude: -122.289394,
  address: '2600 San Pablo Ave',
  city: 'Berkeley',
  state: 'CA',
  zip: 94316,
  stars: 4.333,
  phone_number: '(510) 548-2080',
  price: 1
)
b17 = Business.create(
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
b18 = Business.create(
  name: "Bi-Rite Creamery",
  latitude: 37.761497,
  longitude: -122.425749,
  address: '3692 18th St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94110,
  stars: 4.0,
  phone_number: '(415) 626-5600',
  price: 1
)
b19 = Business.create(
  name: "Sam Wo Restaurant",
  latitude: 37.794414,
  longitude: -122.405000,
  address: '713 Clay St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 3.5,
  phone_number: '(415) 989-8898',
  price: 1
)
b20 = Business.create(
  name: "Starbucks",
  latitude: 37.802747,
  longitude: -122.403060,
  address: '1255 Battery St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94111,
  stars: 3.0,
  phone_number: '(415) 402-0379',
  price: 1
)
b21 = Business.create(
  name: "Marufuku Ramen",
  latitude: 37.785226,
  longitude: -122.432395,
  address: '1581 Webster St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94111,
  stars: 4.0,
  phone_number: '(415) 872-9786',
  price: 2
)
b22 = Business.create(
  name: "Sunflower Restaurant",
  latitude: 37.764832,
  longitude: -122.421944,
  address: '3111 16th St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94101,
  stars: 3.0,
  phone_number: '(415) 626-5023',
  price: 1
)
b23 = Business.create(
  name: "The Beehive",
  latitude: 37.759445,
  longitude: -122.421417,
  address: '842 Valencia St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 4.0,
  phone_number: '(415) 306-8209',
  price: 2
)
b24 = Business.create(
  name: "F8 Nightclub and Bar",
  latitude: 37.775198,
  longitude: -122.409941,
  address: '1192 Folsom',
  city: 'San Francisco',
  state: 'CA',
  zip: 94103,
  stars: 4.8,
  phone_number: '(415) 857-1192',
  price: 2
)
b25 = Business.create(
  name: "El Farolito",
  latitude: 37.752784,
  longitude: -122.418566,
  address: '2779 Mission St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 4.33,
  phone_number: '(415) 824-7877',
  price: 1
)
b26 = Business.create(
  name: "Tín Vietnamese Cuisine",
  latitude: 37.780824,
  longitude: -122.405850,
  address: '937 Howard St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94103,
  stars: 4.0,
  phone_number: '(415) 882-7188',
  price: 1
)
b27 = Business.create(
  name: "Reveille Coffee Co.",
  latitude: 37.797166,
  longitude: -122.405382,
  address: '200 Columbus Ave',
  city: 'San Francisco',
  state: 'CA',
  zip: 94133,
  stars: 4.0,
  phone_number: '(415) 789-6258',
  price: 2
)
b28 = Business.create(
  name: "Boba Guys",
  latitude: 37.760104,
  longitude: -122.421229,
  address: '3491 19th St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94113,
  stars: 4.5,
  phone_number: '(415) 967-2622',
  price: 1
)
b29 = Business.create(
  name: "Panchita’s Restaurant No 2",
  latitude: 37.764972,
  longitude: -122.421555,
  address: '3091 16th Stt',
  city: 'San Francisco',
  state: 'CA',
  zip: 94103,
  stars: 5,
  phone_number: '(415) 967-2622',
  price: 1
)
b30 = Business.create(
  name: "Garaje",
  latitude: 37.781583,
  longitude: -122.396146,
  address: '3091 16th St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94103,
  stars: 3.5,
  phone_number: '(415) 967-2622',
  price: 2
)
b31 = Business.create(
  name: "Akiko's Restaurant",
  latitude: 37.789075,
  longitude: -122.409953,
  address: '431 Bush St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 3.0,
  phone_number: '(415) 397-3218',
  price: 2
)
b32 = Business.create(
  name: "Devout Coffee",
  latitude: 37.577378,
  longitude: -121.980932,
  address: '37323 Niles Blvd',
  city: 'Fremont',
  state: 'CA',
  zip: 94536,
  stars: 4.1667,
  phone_number: '(510) 397-3218',
  price: 1
)
b33 = Business.create(
  name: "Carl's Jr",
  latitude: 37.784907,
  longitude:  -122.408617,
  address: '1 Hallidie Plz',
  city: 'San Francisco',
  state: 'CA',
  zip: 94106,
  stars: 3.0,
  phone_number: '(415) 391-5799',
  price: 1
)
b34 = Business.create(
  name: "Takoba",
  latitude: 37.787413,
  longitude: -122.400462,
  address: '138 Minna St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 3.2,
  phone_number: '(415) 361-0448',
  price: 3
)
b35 = Business.create(
  name: "Tataki",
  latitude: 37.787941,
  longitude: -122.441174,
  address: '2827 California St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 4.0,
  phone_number: '(415) 931-1182',
  price: 2
)
b36 = Business.create(
  name: "Mensho Tokyo",
  latitude: 37.786628,
  longitude: -122.414285,
  address: '672 Geary St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94113,
  stars: 3.33,
  phone_number: '(415) 800-8345',
  price: 2
)
b37 = Business.create(
  name: "Burritos Express",
  latitude: 37.786466,
  longitude: -122.440112,
  address: '1812 Divisadero St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 3.5,
  phone_number: '(415) 776-4246',
  price: 1
)
b38 = Business.create(
  name: "Tacorea",
  latitude: 37.789873,
  longitude: -122.410905,
  address: '809 Bush St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 4.0,
  phone_number: '(415) 885-1325',
  price: 1
)
b39 = Business.create(
  name: "Manitas Cafe",
  latitude: 37.773399,
  longitude: -122.450615,
  address: '2078 Hayes St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 3.60,
  phone_number: '(415) 213-5566',
  price: 1
)
b40 = Business.create(
  name: "Marcello’s Pizza",
  latitude: 37.762038,
  longitude: -122.435236,
  address: '420 Castro St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 3.00,
  phone_number: '(415) 863-3900',
  price: 1
)
b41 = Business.create(
  name: "Pho Ha Tien",
  latitude: 37.725425,
  longitude: -122.462422,
  address: '1900 Ocean Ave',
  city: 'San Francisco',
  state: 'CA',
  zip: 94113,
  stars: 3.2,
  phone_number: '(415) 337-2168',
  price: 1
)
b42 = Business.create(
  name: "Khai",
  latitude: 37.770806,
  longitude: -122.402893,
  address: '655 Townsend St',
  city: 'San Francisco',
  state: 'CA',
  zip: 94103,
  stars: 4.2,
  phone_number: '(415) 724-2325',
  price: 4
)
b43 = Business.create(
  name: "Black Sugar",
  latitude: 37.786216,
  longitude: -122.409978,
  address: "320 O'Farrell St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94105,
  stars: 4.0,
  phone_number: '(415) 521-2022',
  price: 1
)
b44 = Business.create(
  name: "Mission Beach Cafe",
  latitude: 37.768102,
  longitude: -122.424577,
  address: "198 Guerrero St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 3.6,
  phone_number: '(415) 521-2022',
  price: 2
)
b45 = Business.create(
  name: "Lou’s Cafe",
  latitude: 37.780375,
  longitude: -122.473319,
  address: "15017 Geary Blvd",
  city: 'San Francisco',
  state: 'CA',
  zip: 94118,
  stars: 3.0,
  phone_number: '(415) 379-4429',
  price: 1
)
b46 = Business.create(
  name: "Brenda's French Soul Food",
  latitude: 37.782873,
  longitude: -122.419170,
  address: "652 Polk St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  stars: 4.6,
  phone_number: '(415) 345-8100',
  price: 2
)
b47 = Business.create(
  name: "Ramen Izakaya Goku",
  latitude: 37.764794,
  longitude: -122.425028,
  address: "3232 16th St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  stars: 2.6,
  phone_number: '(415) 934-0321',
  price: 2
)
b48 = Business.create(
  name: "Hakkasan",
  latitude: 37.787773,
  longitude: -122.403592,
  address: "1 Kearny St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94102,
  stars: 4.0,
  phone_number: '(415) 829-8148',
  price: 3
)
b49 = Business.create(
  name: "Puppy Bobar",
  latitude: 37.797518,
  longitude: -122.406975,
  address: "1142 Grant Ave",
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 3.6,
  phone_number: '(415) 636-5181',
  price: 1
)
b50 = Business.create(
  name: "Milkbomb Ice Cream",
  latitude: 37.764851,
  longitude: -122.401332,
  address: "1717 17th St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 4.0,
  phone_number: '(415) 780-4429',
  price: 1
)
b51 = Business.create(
  name: "Curry Leaf",
  latitude: 37.803188,
  longitude: -122.414389,
  address: "943 Columbus Ave",
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 4.0,
  phone_number: '(415) 440-4293',
  price: 2
)
b52 = Business.create(
  name: "Golden Gate",
  latitude: 37.760669,
  longitude: -122.505552,
  address: "4038 Judah St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94107,
  stars: 4.0,
  phone_number: '(415) 564-5514',
  price: 2
)
b53 = Business.create(
  name: "E Tea",
  latitude: 37.795798,
  longitude: -122.405072,
  address: "839 Kearny St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94108,
  stars: 4.0,
  phone_number: '(415) 956-1868',
  price: 1
)
b54 = Business.create(
  name: "Tony’s Pizza Napoletana",
  latitude: 37.800262,
  longitude: -122.409002,
  address: "1570 Stockton St",
  city: 'San Francisco',
  state: 'CA',
  zip: 94109,
  stars: 4.6,
  phone_number: '(415) 835-9888',
  price: 2
)

## Milk Bomb

# business cp1

Category.create(
  business_id: b1.id,
  category: 'Chinese',
)
Category.create(
  business_id: b1.id,
  category: 'Dim Sum',
)
Category.create(
  business_id: b1.id,
  category: 'Bakeries',
)
Category.create(
  business_id: b2.id,
  category: 'Cafe',
)
Category.create(
  business_id: b2.id,
  category: 'Salads',
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
  category: 'Burgers',
)
Category.create(
  business_id: b5.id,
  category: 'French',
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
Category.create(
  business_id: b16.id,
  category: 'Bars',
)
Category.create(
  business_id: b16.id,
  category: 'American',
)
Category.create(
  business_id: b17.id,
  category: 'American',
)
Category.create(
  business_id: b17.id,
  category: 'Burgers',
)
Category.create(
  business_id: b17.id,
  category: 'Fast Food',
)
Category.create(
  business_id: b18.id,
  category: 'Ice Cream',
)
Category.create(
  business_id: b18.id,
  category: 'Bakeries',
)
Category.create(
  business_id: b19.id,
  category: 'Chinese',
)
Category.create(
  business_id: b20.id,
  category: 'Cafe',
)
Category.create(
  business_id: b20.id,
  category: 'Coffee',
)
Category.create(
  business_id: b20.id,
  category: 'Tea',
)
Category.create(
  business_id: b21.id,
  category: 'Japanese',
)
Category.create(
  business_id: b21.id,
  category: 'Ramen',
)
Category.create(
  business_id: b21.id,
  category: 'Noodles',
)
Category.create(
  business_id: b22.id,
  category: 'Vietnamese',
)
Category.create(
  business_id: b23.id,
  category: 'Bars',
)
Category.create(
  business_id: b23.id,
  category: 'Lounges',
)
Category.create(
  business_id: b24.id,
  category: 'Clubs',
)
Category.create(
  business_id: b24.id,
  category: 'Lounges',
)
Category.create(
  business_id: b24.id,
  category: 'Dance',
)
Category.create(
  business_id: b24.id,
  category: 'Bars',
)
Category.create(
  business_id: b25.id,
  category: 'Mexican',
)
Category.create(
  business_id: b25.id,
  category: 'Burritos',
)
Category.create(
  business_id: b25.id,
  category: 'Sandwiches',
)
Category.create(
  business_id: b26.id,
  category: 'Vietnamese',
)
Category.create(
  business_id: b26.id,
  category: 'Noodles',
)
Category.create(
  business_id: b27.id,
  category: 'Coffee',
)
Category.create(
  business_id: b27.id,
  category: 'Tea',
)
Category.create(
  business_id: b28.id,
  category: 'Bubble Tea',
)
Category.create(
  business_id: b28.id,
  category: 'Boba',
)
Category.create(
  business_id: b29.id,
  category: 'Salvadoran',
)
Category.create(
  business_id: b29.id,
  category: 'Mexican',
)
Category.create(
  business_id: b30.id,
  category: 'Mexican',
)
Category.create(
  business_id: b30.id,
  category: 'Burgers',
)
Category.create(
  business_id: b30.id,
  category: 'American',
)
Category.create(
  business_id: b31.id,
  category: 'Japanese',
)
Category.create(
  business_id: b31.id,
  category: 'Sushi',
)
Category.create(
  business_id: b32.id,
  category: 'Coffee',
)
Category.create(
  business_id: b32.id,
  category: 'Cafe',
)
Category.create(
  business_id: b33.id,
  category: 'Fast Food',
)
Category.create(
  business_id: b33.id,
  category: 'Burgers',
)
Category.create(
  business_id: b34.id,
  category: 'Sushi',
)
Category.create(
  business_id: b34.id,
  category: 'Japanese',
)
Category.create(
  business_id: b35.id,
  category: 'Sushi',
)
Category.create(
  business_id: b35.id,
  category: 'Japanese',
)
Category.create(
  business_id: b35.id,
  category: 'Bars',
)
Category.create(
  business_id: b36.id,
  category: 'Japanese',
)
Category.create(
  business_id: b36.id,
  category: 'Ramen',
)
Category.create(
  business_id: b36.id,
  category: 'Noodles',
)
Category.create(
  business_id: b37.id,
  category: 'Burritos',
)
Category.create(
  business_id: b37.id,
  category: 'Mexican',
)
Category.create(
  business_id: b38.id,
  category: 'Mexican',
)
Category.create(
  business_id: b38.id,
  category: 'Korean',
)
Category.create(
  business_id: b39.id,
  category: 'Salvadoran',
)
Category.create(
  business_id: b39.id,
  category: 'Breakfast',
)
Category.create(
  business_id: b39.id,
  category: 'Cafe',
)
Category.create(
  business_id: b40.id,
  category: 'Pizza',
)
Category.create(
  business_id: b40.id,
  category: 'Burgers',
)
Category.create(
  business_id: b40.id,
  category: 'Salads',
)
Category.create(
  business_id: b41.id,
  category: 'Vietnamese',
)
Category.create(
  business_id: b41.id,
  category: 'Noodles',
)
Category.create(
  business_id: b42.id,
  category: 'Vietnamese',
)
Category.create(
  business_id: b43.id,
  category: 'Boba',
)
Category.create(
  business_id: b43.id,
  category: 'Coffee',
)
Category.create(
  business_id: b44.id,
  category: 'Coffee',
)
Category.create(
  business_id: b44.id,
  category: 'Cafe',
)
Category.create(
  business_id: b44.id,
  category: 'Breakfast',
)
Category.create(
  business_id: b45.id,
  category: 'Sandwiches',
)
Category.create(
  business_id: b45.id,
  category: 'Coffee',
)
Category.create(
  business_id: b45.id,
  category: 'Salads',
)
Category.create(
  business_id: b46.id,
  category: 'Breakfast',
)
Category.create(
  business_id: b46.id,
  category: 'French',
)
Category.create(
  business_id: b47.id,
  category: 'Japanese',
)
Category.create(
  business_id: b47.id,
  category: 'Ramen',
)
Category.create(
  business_id: b48.id,
  category: 'Chinese',
)
Category.create(
  business_id: b48.id,
  category: 'Dim Sum',
)
Category.create(
  business_id: b48.id,
  category: 'American',
)
Category.create(
  business_id: b49.id,
  category: 'Boba',
)
Category.create(
  business_id: b49.id,
  category: 'Ice Cream',
)
Category.create(
  business_id: b49.id,
  category: 'Desserts',
)
Category.create(
  business_id: b50.id,
  category: 'Ice Cream',
)
Category.create(
  business_id: b50.id,
  category: 'Desserts',
)
Category.create(
  business_id: b51.id,
  category: 'Indian',
)
Category.create(
  business_id: b51.id,
  category: 'Pakistani',
)
Category.create(
  business_id: b51.id,
  category: 'Curry',
)
Category.create(
  business_id: b52.id,
  category: 'Indian',
)
Category.create(
  business_id: b52.id,
  category: 'Pizza',
)
Category.create(
  business_id: b53.id,
  category: 'Boba',
)
Category.create(
  business_id: b53.id,
  category: 'Coffee',
)
Category.create(
  business_id: b53.id,
  category: 'Tea',
)
Category.create(
  business_id: b54.id,
  category: 'Pizza',
)
Category.create(
  business_id: b54.id,
  category: 'Italian',
)




# category cp2

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
  business_id: b17.id,
  hours: late
)
Hour.create(
  business_id: b6.id,
  hours: normal_7
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
  hours: normal_7
)
Hour.create(
  business_id: b14.id,
  hours: normal
)
Hour.create(
  business_id: b15.id,
  hours: normal
)
Hour.create(
  business_id: b16.id,
  hours: late
)
Hour.create(
  business_id: b5.id,
  hours: normal_7
)
Hour.create(
  business_id: b18.id,
  hours: normal
)
Hour.create(
  business_id: b19.id,
  hours: normal_7
)
Hour.create(
  business_id: b20.id,
  hours: normal_7
)
Hour.create(
  business_id: b21.id,
  hours: normal_7
)
Hour.create(
  business_id: b22.id,
  hours: normal_7
)
Hour.create(
  business_id: b23.id,
  hours: late
)
Hour.create(
  business_id: b24.id,
  hours: late
)
Hour.create(
  business_id: b25.id,
  hours: late
)
Hour.create(
  business_id: b26.id,
  hours: normal
)
Hour.create(
  business_id: b27.id,
  hours: normal_7
)
Hour.create(
  business_id: b28.id,
  hours: normal_7
)
Hour.create(
  business_id: b29.id,
  hours: normal
)
Hour.create(
  business_id: b30.id,
  hours: late
)
Hour.create(
  business_id: b31.id,
  hours: normal
)
Hour.create(
  business_id: b32.id,
  hours: normal
)
Hour.create(
  business_id: b33.id,
  hours: night
)
Hour.create(
  business_id: b34.id,
  hours: normal_7
)
Hour.create(
  business_id: b35.id,
  hours: normal_7
)
Hour.create(
  business_id: b36.id,
  hours: normal
)
Hour.create(
  business_id: b37.id,
  hours: late
)
Hour.create(
  business_id: b38.id,
  hours: late
)
Hour.create(
  business_id: b39.id,
  hours: normal_7
)
Hour.create(
  business_id: b40.id,
  hours: normal_7
)
Hour.create(
  business_id: b41.id,
  hours: normal_7
)
Hour.create(
  business_id: b42.id,
  hours: normal
)
Hour.create(
  business_id: b43.id,
  hours: normal
)
Hour.create(
  business_id: b44.id,
  hours: normal
)
Hour.create(
  business_id: b45.id,
  hours: normal
)
Hour.create(
  business_id: b46.id,
  hours: normal
)
Hour.create(
  business_id: b47.id,
  hours: normal
)
Hour.create(
  business_id: b48.id,
  hours: normal_7
)
Hour.create(
  business_id: b49.id,
  hours: normal_7
)
Hour.create(
  business_id: b50.id,
  hours: normal
)
Hour.create(
  business_id: b51.id,
  hours: normal
)
Hour.create(
  business_id: b52.id,
  hours: normal
)
Hour.create(
  business_id: b53.id,
  hours: normal
)
Hour.create(
  business_id: b54.id,
  hours: normal
)

# hours cp3

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
  details: detail_casual
)
BusinessInfo.create(
  business_id: b17.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b6.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b7.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b8.id,
  details: detail_casual
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
BusinessInfo.create(
  business_id: b16.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b5.id,
  details: detail
)
BusinessInfo.create(
  business_id: b18.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b19.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b20.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b21.id,
  details: detail
)
BusinessInfo.create(
  business_id: b22.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b23.id,
  details: detail
)
BusinessInfo.create(
  business_id: b24.id,
  details: detail
)
BusinessInfo.create(
  business_id: b25.id,
  details: detail
)
BusinessInfo.create(
  business_id: b26.id,
  details: detail
)
BusinessInfo.create(
  business_id: b27.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b28.id,
  details: detail
)
BusinessInfo.create(
  business_id: b29.id,
  details: detail
)
BusinessInfo.create(
  business_id: b30.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b31.id,
  details: detail
)
BusinessInfo.create(
  business_id: b32.id,
  details: detail
)
BusinessInfo.create(
  business_id: b33.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b34.id,
  details: detail
)
BusinessInfo.create(
  business_id: b35.id,
  details: detail
)
BusinessInfo.create(
  business_id: b36.id,
  details: detail
)
BusinessInfo.create(
  business_id: b37.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b38.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b39.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b40.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b41.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b42.id,
  details: detail
)
BusinessInfo.create(
  business_id: b43.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b44.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b45.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b46.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b47.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b48.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b49.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b50.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b51.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b52.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b53.id,
  details: detail_casual
)
BusinessInfo.create(
  business_id: b54.id,
  details: detail_casual
)

# biz info cp4

Review.create(
  business_id: b1.id,
  user_id: u1.id,
  stars: 5,
  text: good_1,
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
  business_id: b2.id,
  user_id: u1.id,
  stars: 5,
  text: good_2,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b2.id,
  user_id: u1.id,
  stars: 4,
  text: love_4,
  post_date: '8/23/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u2.id,
  stars: 3,
  text: meh_1,
  post_date: '8/7/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u4.id,
  stars: 4,
  text: okay_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u3.id,
  stars: 4,
  text: love_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u2.id,
  stars: 4,
  text: good_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u5.id,
  stars: 4,
  text: okay_1,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u5.id,
  stars: 5,
  text: love_2,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u3.id,
  stars: 3,
  text: meh_4,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b1.id,
  user_id: u8.id,
  stars: 4,
  text: "Now don't get me wrong... I am of the STRONG belief that LA has some of the BEST dimsum ever. But man... I think about this place a lot. Good Mong Kok Bakery is truly an EXCEPTIONAL dimsum store that serves really delicious and authentic stuff.",
  post_date: '8/10/2018'
)
Review.create(
  business_id: b3.id,
  user_id: u7.id,
  stars: 4,
  text: "I enjoyed the custard French toast and a side of sausage. It was incredible! The french toast with the vanilla mascarpone cream was so good I made another order to-go (and enjoyed the next day).",
  post_date: '8/10/2018'
)
Review.create(
  business_id: b2.id,
  user_id: u7.id,
  stars: 5,
  text: "I wish I could eat here every day! As someone looking to eat less dairy and meat, they have so many great salad options (especially the seaweed salad). I have no complaints and hope it stays that way after future visits.",
  post_date: '9/10/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u3.id,
  stars: 5,
  text: good_3,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u20.id,
  stars: 4,
  text: good_3,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u7.id,
  stars: 2,
  text: ambig,
  post_date: '8/14/2018'
)
Review.create(
  business_id: b4.id,
  user_id: u2.id,
  stars: 5,
  text: "This place has BOMB macarons! Perfect texture. Airy but chewy with a satisfying crunch at the beginning. My favorite was the pistachio. Simple. Delicate but noticeable flavor. I also tried the strawberry yuzu flavor and the salty caramel. I think most people would have favored the salty caramel which apparently is their best seller. It was good but a little too sweet for me.",
  post_date: '8/15/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u3.id,
  stars: 5,
  text: love_3,
  post_date: '7/22/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u20.id,
  stars: 5,
  text: love_2,
  post_date: '8/2/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u19.id,
  stars: 5,
  text: good_1,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u15.id,
  stars: 5,
  text: good_2,
  post_date: '8/13/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u7.id,
  stars: 5,
  text: love_2,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b5.id,
  user_id: u11.id,
  stars: 5,
  text: love_1,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b17.id,
  user_id: u5.id,
  stars: 2,
  text: meh_1,
  post_date: '7/8/2018'
)
Review.create(
  business_id: b17.id,
  user_id: u2.id,
  stars: 4,
  text: ambig,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b17.id,
  user_id: u6.id,
  stars: 3,
  text: okay_1,
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
  text: "Okay, this place has now become my favorite place to get tacos. I'm a huge fan of cabeza and lengua tacos. Not many places make good cabeza or lengua tacos in the area. But this place OH MY GOD. Where do I even begin?! The cabeza and lengua were both juicy and flavorful! Also, the salsa that goes on top is amazing.",
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
  text: meh_1,
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
  text: meh_1,
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
  text: okay_1,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b9.id,
  user_id: u11.id,
  stars: 5,
  text: good_2,
  post_date: '8/16/2018'
)
Review.create(
  business_id: b10.id,
  user_id: u4.id,
  stars: 4,
  text: love_3,
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
  text: good_2,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b10.id,
  user_id: u1.id,
  stars: 4,
  text: love_bar,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u9.id,
  stars: 5,
  text: love_2,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u3.id,
  stars: 2,
  text: meh_2,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u3.id,
  stars: 4,
  text: love_1,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u10.id,
  stars: 3,
  text: love_1,
  post_date: '9/11/2018'
)
Review.create(
  business_id: b11.id,
  user_id: u15.id,
  stars: 3,
  text: "Have ordered from this location through DoorDash on multiple occasions. For those busy days where we can't seem to find time to cook dinner. Very happy that it usually takes no more than 40 minutes from order to delivery on a week night. I imagine weekends can take a little longer.",
  post_date: '8/15/2018'
)
Review.create(
  business_id: b12.id,
  user_id: u19.id,
  stars: 3,
  text: meh_1,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b12.id,
  user_id: u9.id,
  stars: 5,
  text: love_2,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b12.id,
  user_id: u18.id,
  stars: 2,
  text: meh_2,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b12.id,
  user_id: u5.id,
  stars: 4,
  text: "My small 4 oz. burger was of high-quality, but on the small side for the money ($6.99 with tax, no fries). But you know, quality costs, not to mention the ridiculous price of everything nowadays.",
  post_date: '8/30/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u6.id,
  stars: 4,
  text: good_2,
  post_date: '8/2/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u5.id,
  stars: 3,
  text: meh_1,
  post_date: '8/16/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u11.id,
  stars: 5,
  text: good_2,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b13.id,
  user_id: u7.id,
  stars: 4,
  text: love_1,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b14.id,
  user_id: u7.id,
  stars: 1,
  text: bad_4,
  post_date: '7/18/2018'
)
Review.create(
  business_id: b14.id,
  user_id: u12.id,
  stars: 5,
  text: okay_4,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b14.id,
  user_id: u17.id,
  stars: 3,
  text: good_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b14.id,
  user_id: u14.id,
  stars: 3,
  text: "I was told by some that it's the Subway of Cali, but others live and die by this sandwich shop. First off, the menu is MASSIVE and slightly overwhelming. Definitely not a knock against them, but I'd take a look at the extensive menu before coming here.",
  post_date: '8/13/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u14.id,
  stars: 1,
  text: bad_1,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u4.id,
  stars: 5,
  text: love_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u19.id,
  stars: 4,
  text: meh_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b15.id,
  user_id: u2.id,
  stars: 4,
  text: "
Dive bars are not my favorite, but if you're in the area and you love beer, then Zeitgeist is an easy, casual option. Three of us stopped in for beers and enjoyed them in the outside patio area. The weather was perfect that day, and we shared a big pitcher of draft beer which my husband selected from the bar.",
  post_date: '8/18/2018'
)
Review.create(
  business_id: b16.id,
  user_id: u1.id,
  stars: 3,
  text: meh_1,
  post_date: '8/3/2018'
)
Review.create(
  business_id: b16.id,
  user_id: u8.id,
  stars: 5,
  text: good_1,
  post_date: '8/8/2018'
)
Review.create(
  business_id: b16.id,
  user_id: u4.id,
  stars: 5,
  text: good_3,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b18.id,
  user_id: u9.id,
  stars: 3,
  text: meh_1,
  post_date: '8/6/2018'
)
Review.create(
  business_id: b18.id,
  user_id: u13.id,
  stars: 4,
  text: love_1,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b18.id,
  user_id: u1.id,
  stars: 5,
  text: love_2,
  post_date: '8/24/2018'
)
Review.create(
  business_id: b19.id,
  user_id: u2.id,
  stars: 4,
  text: good_2,
  post_date: '8/4/2018'
)
Review.create(
  business_id: b19.id,
  user_id: u18.id,
  stars: 3,
  text: meh_1,
  post_date: '8/4/2018'
)
Review.create(
  business_id: b19.id,
  user_id: u10.id,
  stars: 4,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b19.id,
  user_id: u11.id,
  stars: 4,
  text: "Kung pao shrimp was flavorful and had the right amount of spice. We also tried the house chow mein, house fried rice and shrimp chow mein. All in all tasty food.",
  post_date: '8/21/2018'
)
Review.create(
  business_id: b20.id,
  user_id: u15.id,
  stars: 3,
  text: okay_4,
  post_date: '7/21/2018'
)
Review.create(
  business_id: b20.id,
  user_id: u5.id,
  stars: 3,
  text: okay_2,
  post_date: '8/14/2018'
)
Review.create(
  business_id: b20.id,
  user_id: u18.id,
  stars: 3,
  text: good_2,
  post_date: '8/21/2018'
)
Review.create(
  business_id: b20.id,
  user_id: u10.id,
  stars: 3,
  text: meh_1,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b21.id,
  user_id: u13.id,
  stars: 4,
  text: okay_2,
  post_date: '7/9/2018'
)
Review.create(
  business_id: b21.id,
  user_id: u7.id,
  stars: 4,
  text: good_4,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b21.id,
  user_id: u10.id,
  stars: 4,
  text: good_3,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b21.id,
  user_id: u11.id,
  stars: 4,
  text: "One of the best ramen restaurants I've tried in the U.S.! We ordered pork delux and regular chicken ramen which were both cooked to perfection. I particularly enjoyed the broth that came with the pork ramen - so savory, rich but not greasy at all!",
  post_date: '9/9/2018'
)
Review.create(
  business_id: b22.id,
  user_id: u4.id,
  stars: 3,
  text: meh_1,
  post_date: '8/24/2018'
)
Review.create(
  business_id: b22.id,
  user_id: u6.id,
  stars: 3,
  text: meh_1,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b22.id,
  user_id: u14.id,
  stars: 3,
  text: "Not the best pho I've ever had, but it's the only accessible pho location near me, so I'll take it.  I had the Pho Tai, which was a huge bowl with lots of soup and plenty of noodles!  It was more than what I could actually finish eating.  I asked for lots of basil, extra lime, and some hoisin / sriracha - and this bowl satisfied what I was looking for.",
  post_date: '10/10/2018'
)
Review.create(
  business_id: b23.id,
  user_id: u8.id,
  stars: 4,
  text: okay_2,
  post_date: '7/18/2018'
)
Review.create(
  business_id: b23.id,
  user_id: u4.id,
  stars: 4,
  text: okay_1,
  post_date: '8/6/2018'
)
Review.create(
  business_id: b23.id,
  user_id: u12.id,
  stars: 4,
  text: good_2,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b23.id,
  user_id: u14.id,
  stars: 4,
  text: good_3,
  post_date: '8/18/2018'
)
Review.create(
  business_id: b24.id,
  user_id: u12.id,
  stars: 5,
  text: good_1,
  post_date: '8/6/2018'
)
Review.create(
  business_id: b24.id,
  user_id: u18.id,
  stars: 4,
  text: meh_1,
  post_date: '8/18/2018'
)
Review.create(
  business_id: b24.id,
  user_id: u2.id,
  stars: 5,
  text: love_2,
  post_date: '8/18/2018'
)
Review.create(
  business_id: b24.id,
  user_id: u8.id,
  stars: 5,
  text: love_2,
  post_date: '8/19/2018'
)
Review.create(
  business_id: b24.id,
  user_id: u20.id,
  stars: 5,
  text: "Esta plays here and it gets lit, can't ask for much else besides that. Prices are standard SF drinks, but we warned they are strong. Get ready to turn up!",
  post_date: '8/22/2018'
)
Review.create(
  business_id: b25.id,
  user_id: u10.id,
  stars: 5,
  text: love_2,
  post_date: '8/25/2018'
)
Review.create(
  business_id: b25.id,
  user_id: u11.id,
  stars: 4,
  text: meh_1,
  post_date: '9/25/2018'
)
Review.create(
  business_id: b25.id,
  user_id: u12.id,
  stars: 4,
  text: "I ordered the lengua, carne asada, and al pastor soft tacos. The lengua was my favorite and was super tender. The carne asada was a bit dry and flavorless. And the al pastor was pretty traditional in it seasoning. They give a good amount of onions and cilantro but the sauces are pretty mediocre.",
  post_date: '9/29/2018'
)
Review.create(
  business_id: b26.id,
  user_id: u16.id,
  stars: 4,
  text: good_1,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b26.id,
  user_id: u6.id,
  stars: 5,
  text: love_2,
  post_date: '8/15/2018'
)
Review.create(
  business_id: b26.id,
  user_id: u10.id,
  stars: 3,
  text: okay_2,
  post_date: '9/18/2018'
)
Review.create(
  business_id: b26.id,
  user_id: u7.id,
  stars: 4,
  text: love_1,
  post_date: '10/17/2018'
)
Review.create(
  business_id: b27.id,
  user_id: u8.id,
  stars: 4,
  text: okay_3,
  post_date: '7/15/2018'
)
Review.create(
  business_id: b27.id,
  user_id: u20.id,
  stars: 4,
  text: meh_3,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b27.id,
  user_id: u3.id,
  stars: 4,
  text: good_3,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b27.id,
  user_id: u2.id,
  stars: 4,
  text: good_3,
  post_date: '9/6/2018'
)
Review.create(
  business_id: b27.id,
  user_id: u5.id,
  stars: 4,
  text: okay_2,
  post_date: '10/1/2018'
)
Review.create(
  business_id: b27.id,
  user_id: u13.id,
  stars: 4,
  text: "Reveille is an adorable coffee shop. There's a gorgeous outdoor seating area that's literally covered in leaves and whatnot from trees (it's even prettier when the flowers are blooming!). Great spot for people watching or doing some work. There's ample seating indoors too.",
  post_date: '10/2/2018'
)
Review.create(
  business_id: b28.id,
  user_id: u1.id,
  stars: 5,
  text: ambig,
  post_date: '8/9/2018'
)
Review.create(
  business_id: b28.id,
  user_id: u14.id,
  stars: 4,
  text: text,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b28.id,
  user_id: u15.id,
  stars: 4,
  text: okay_1,
  post_date: '8/29/2018'
)
Review.create(
  business_id: b28.id,
  user_id: u16.id,
  stars: 5,
  text: "I was blown away by how fresh their boba is. The cashier was literally taking my order while mixing a fresh hot batch of boba balls right behind her. I tried out the strawberry matcha latte and my boyfriend tried the horchata boba both at the regular sugar levels. The horchata was ok, it didn't taste like traditional horchata, but I didn't think it was going to.",
  post_date: '9/7/2018'
)
Review.create(
  business_id: b29.id,
  user_id: u18.id,
  stars: 5,
  text: text,
  post_date: '7/29/2018'
)
Review.create(
  business_id: b29.id,
  user_id: u10.id,
  stars: 5,
  text: text,
  post_date: '7/20/2018'
)
Review.create(
  business_id: b29.id,
  user_id: u8.id,
  stars: 5,
  text: text,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b29.id,
  user_id: u18.id,
  stars: 5,
  text: love_3,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b29.id,
  user_id: u11.id,
  stars: 5,
  text: "This place has been around for a long time instead of the new influx of mission restaurants that cater to people looking for more refined meals and $$$, this place is a good Mission OG.",
  post_date: '8/17/2018'
)
Review.create(
  business_id: b30.id,
  user_id: u13.id,
  stars: 3,
  text: ambig,
  post_date: '9/6/2018'
)
Review.create(
  business_id: b30.id,
  user_id: u2.id,
  stars: 4,
  text: good_4,
  post_date: '9/15/2018'
)
Review.create(
  business_id: b30.id,
  user_id: u10.id,
  stars: 3,
  text: meh_3,
  post_date: '9/17/2018'
)
Review.create(
  business_id: b30.id,
  user_id: u8.id,
  stars: 4,
  text: "They're known for their burgers and zapatos so I got the zapatos which is basically a burrito panini. It's very filling and full of flavor. My friends got the tacos and the guy said they're small, but they were HUGE.",
  post_date: '9/19/2018'
)
Review.create(
  business_id: b31.id,
  user_id: u2.id,
  stars: 2,
  text: meh_1,
  post_date: '7/1/2018'
)
Review.create(
  business_id: b31.id,
  user_id: u12.id,
  stars: 3,
  text: meh_1,
  post_date: '8/31/2018'
)
Review.create(
  business_id: b31.id,
  user_id: u13.id,
  stars: 4,
  text: love_2,
  post_date: '8/4/2018'
)
Review.create(
  business_id: b31.id,
  user_id: u20.id,
  stars: 1,
  text: bad_1,
  post_date: '8/27/2018'
)
Review.create(
  business_id: b31.id,
  user_id: u17.id,
  stars: 5,
  text: "Such an amazing dinner experience! We had a reservation to sit at the bar. Our sushi chef was super friendly, which contributed to our great experience. Customer service was great!",
  post_date: '9/4/2018'
)
Review.create(
  business_id: b32.id,
  user_id: u14.id,
  stars: 5,
  text: love_2,
  post_date: '8/1/2018'
)
Review.create(
  business_id: b32.id,
  user_id: u15.id,
  stars: 4,
  text: good_1,
  post_date: '8/4/2018'
)
Review.create(
  business_id: b32.id,
  user_id: u17.id,
  stars: 3,
  text: meh_1,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b32.id,
  user_id: u4.id,
  stars: 4,
  text: love_1,
  post_date: '9/24/2018'
)
Review.create(
  business_id: b32.id,
  user_id: u8.id,
  stars: 4,
  text: okay_1,
  post_date: '9/24/2018'
)
Review.create(
  business_id: b32.id,
  user_id: u12.id,
  stars: 5,
  text: "This was a really cute coffee shop. I like the ambiance of the place, it had like a rustic feel to it. They also have a nice outdoor seating area. The staff was really nice and friendly as well.",
  post_date: '9/30/2018'
)
Review.create(
  business_id: b33.id,
  user_id: u12.id,
  stars: 4,
  text: good_3,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b33.id,
  user_id: u18.id,
  stars: 2,
  text: good_3,
  post_date: '8/11/2018'
)
Review.create(
  business_id: b33.id,
  user_id: u1.id,
  stars: 3,
  text: good_3,
  post_date: '8/12/2018'
)
Review.create(
  business_id: b33.id,
  user_id: u2.id,
  stars: 3,
  text: good_3,
  post_date: '8/30/2018'
)
Review.create(
  business_id: b34.id,
  user_id: u2.id,
  stars: 3,
  text: meh_2,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b34.id,
  user_id: u3.id,
  stars: 1,
  text: bad_2,
  post_date: '8/13/2018'
)
Review.create(
  business_id: b34.id,
  user_id: u4.id,
  stars: 4,
  text: good_3,
  post_date: '8/30/2018'
)
Review.create(
  business_id: b34.id,
  user_id: u5.id,
  stars: 3,
  text: good_1,
  post_date: '9/30/2018'
)
Review.create(
  business_id: b34.id,
  user_id: u13.id,
  stars: 3,
  text: okay_2,
  post_date: '9/30/2018'
)
Review.create(
  business_id: b35.id,
  user_id: u5.id,
  stars: 4,
  text: okay_2,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b35.id,
  user_id: u20.id,
  stars: 4,
  text: good_1,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b35.id,
  user_id: u10.id,
  stars: 4,
  text: good_3,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b35.id,
  user_id: u7.id,
  stars: 5,
  text: good_1,
  post_date: '9/1/2018'
)
Review.create(
  business_id: b35.id,
  user_id: u8.id,
  stars: 3,
  text: meh_1,
  post_date: '9/11/2018'
)
Review.create(
  business_id: b35.id,
  user_id: u15.id,
  stars: 4,
  text: love_1,
  post_date: '9/12/2018'
)
Review.create(
  business_id: b36.id,
  user_id: u5.id,
  stars: 3,
  text: okay_2,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b36.id,
  user_id: u20.id,
  stars: 4,
  text: good_2,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b36.id,
  user_id: u10.id,
  stars: 1,
  text: bad_2,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b36.id,
  user_id: u7.id,
  stars: 5,
  text: good_1,
  post_date: '9/6/2018'
)
Review.create(
  business_id: b36.id,
  user_id: u8.id,
  stars: 3,
  text: meh_2,
  post_date: '9/11/2018'
)
Review.create(
  business_id: b36.id,
  user_id: u15.id,
  stars: 4,
  text: good_3,
  post_date: '9/22/2018'
)
Review.create(
  business_id: b37.id,
  user_id: u6.id,
  stars: 2,
  text: bad_1,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b37.id,
  user_id: u20.id,
  stars: 5,
  text: love_2,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b37.id,
  user_id: u10.id,
  stars: 3,
  text: okay_1,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b37.id,
  user_id: u7.id,
  stars: 4,
  text: good_1,
  post_date: '9/6/2018'
)
Review.create(
  business_id: b37.id,
  user_id: u18.id,
  stars: 4,
  text: good_3,
  post_date: '9/11/2018'
)
Review.create(
  business_id: b37.id,
  user_id: u5.id,
  stars: 3,
  text: meh_1,
  post_date: '9/22/2018'
)
Review.create(
  business_id: b38.id,
  user_id: u8.id,
  stars: 4,
  text: meh_2,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b38.id,
  user_id: u20.id,
  stars: 4,
  text: love_2,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b38.id,
  user_id: u7.id,
  stars: 5,
  text: love_2,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b38.id,
  user_id: u17.id,
  stars: 3,
  text: okay_2,
  post_date: '8/25/2018'
)
Review.create(
  business_id: b38.id,
  user_id: u18.id,
  stars: 4,
  text: good_2,
  post_date: '9/11/2018'
)
Review.create(
  business_id: b38.id,
  user_id: u12.id,
  stars: 4,
  text: good_3,
  post_date: '9/12/2018'
)
Review.create(
  business_id: b39.id,
  user_id: u8.id,
  stars: 4,
  text: okay_2,
  post_date: '8/10/2018'
)
Review.create(
  business_id: b39.id,
  user_id: u20.id,
  stars: 5,
  text: love_4,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b39.id,
  user_id: u7.id,
  stars: 2,
  text: meh_3,
  post_date: '8/20/2018'
)
Review.create(
  business_id: b39.id,
  user_id: u17.id,
  stars: 3,
  text: okay_1,
  post_date: '8/25/2018'
)
Review.create(
  business_id: b39.id,
  user_id: u18.id,
  stars: 4,
  text: good_3,
  post_date: '9/29/2018'
)
Review.create(
  business_id: b40.id,
  user_id: u3.id,
  stars: 3,
  text: good_4,
  post_date: '7/10/2018'
)
Review.create(
  business_id: b40.id,
  user_id: u20.id,
  stars: 5,
  text: love_4,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b40.id,
  user_id: u13.id,
  stars: 2,
  text: bad_4,
  post_date: '8/24/2018'
)
Review.create(
  business_id: b40.id,
  user_id: u17.id,
  stars: 2,
  text: okay_3,
  post_date: '9/25/2018'
)
Review.create(
  business_id: b40.id,
  user_id: u18.id,
  stars: 3,
  text: "Four star pizza, two star service. For a cash only place, they're quite stingy - even if you're 5c short for a topping! Second time this has happened: a few weeks ago a whole group of friends and I walked over excited for pizza after watching a game, and we were a 25c short for the final slice. One of us had to walk away without pizza",
  post_date: '9/29/2018'
)
Review.create(
  business_id: b41.id,
  user_id: u13.id,
  stars: 3,
  text: meh_4,
  post_date: '7/10/2018'
)
Review.create(
  business_id: b41.id,
  user_id: u2.id,
  stars: 4,
  text: good_4,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b41.id,
  user_id: u13.id,
  stars: 2,
  text: meh_3,
  post_date: '8/24/2018'
)
Review.create(
  business_id: b41.id,
  user_id: u17.id,
  stars: 3,
  text: okay_2,
  post_date: '9/25/2018'
)
Review.create(
  business_id: b41.id,
  user_id: u18.id,
  stars: 4,
  text: "I'm pretty close by, but have avoided coming here like the plague because of their lackluster pho and rude service. This used to be the not so great and more expensive pho place, at least compared to Irving Street, but now all of the pho prices are kind of the same.",
  post_date: '10/2/2018'
)
Review.create(
  business_id: b42.id,
  user_id: u15.id,
  stars: 4,
  text: love_4,
  post_date: '8/14/2018'
)
Review.create(
  business_id: b42.id,
  user_id: u2.id,
  stars: 4,
  text: good_3,
  post_date: '8/27/2018'
)
Review.create(
  business_id: b42.id,
  user_id: u13.id,
  stars: 5,
  text: love_1,
  post_date: '9/24/2018'
)
Review.create(
  business_id: b42.id,
  user_id: u7.id,
  stars: 4,
  text: good_2,
  post_date: '9/25/2018'
)
Review.create(
  business_id: b42.id,
  user_id: u20.id,
  stars: 5,
  text: "A fantastic and unique experience beyond the usual New American or Californian tasting menu. The dishes were tasty, well balanced and nuanced in flavor.",
  post_date: '10/8/2018'
)
Review.create(
  business_id: b43.id,
  user_id: u15.id,
  stars: 4,
  text: okay_4,
  post_date: '8/14/2018'
)
Review.create(
  business_id: b43.id,
  user_id: u8.id,
  stars: 4,
  text: good_2,
  post_date: '9/20/2018'
)
Review.create(
  business_id: b43.id,
  user_id: u6.id,
  stars: 4,
  text: love_3,
  post_date: '9/24/2018'
)
Review.create(
  business_id: b43.id,
  user_id: u17.id,
  stars: 4,
  text: good_1,
  post_date: '9/30/2018'
)
Review.create(
  business_id: b43.id,
  user_id: u2.id,
  stars: 5,
  text: "I have been here many times, as it is not far from my building on Market street. Overall, I highly recommend this place!",
  post_date: '10/18/2018'
)
Review.create(
  business_id: b44.id,
  user_id: u16.id,
  stars: 5,
  text: love_4,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b44.id,
  user_id: u3.id,
  stars: 3,
  text: good_3,
  post_date: '9/20/2018'
)
Review.create(
  business_id: b44.id,
  user_id: u7.id,
  stars: 2,
  text: bad_2,
  post_date: '9/24/2018'
)
Review.create(
  business_id: b44.id,
  user_id: u18.id,
  stars: 4,
  text: good_2,
  post_date: '9/30/2018'
)
Review.create(
  business_id: b44.id,
  user_id: u19.id,
  stars: 4,
  text: "Sunday brunch in the Mission. I like this place, but the wait can be ridiculous sometime. If it wasn't for the delicious brioche French toast, I don't think I'll wait that long again.",
  post_date: '10/18/2018'
)
Review.create(
  business_id: b45.id,
  user_id: u6.id,
  stars: 3,
  text: okay_3,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b45.id,
  user_id: u4.id,
  stars: 1,
  text: bad_4,
  post_date: '9/20/2018'
)
Review.create(
  business_id: b45.id,
  user_id: u11.id,
  stars: 2,
  text: meh_4,
  post_date: '9/17/2018'
)
Review.create(
  business_id: b45.id,
  user_id: u14.id,
  stars: 5,
  text: good_2,
  post_date: '9/21/2018'
)
Review.create(
  business_id: b45.id,
  user_id: u19.id,
  stars: 4,
  text: "Good sandy at a good price for sure. Definitely recommend trying it out. Usually fairly busy and the dining room is small so be prepared.",
  post_date: '10/3/2018'
)
Review.create(
  business_id: b46.id,
  user_id: u6.id,
  stars: 5,
  text: love_2,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b46.id,
  user_id: u4.id,
  stars: 4,
  text: love_3,
  post_date: '9/5/2018'
)
Review.create(
  business_id: b46.id,
  user_id: u11.id,
  stars: 5,
  text: good_3,
  post_date: '9/17/2018'
)
Review.create(
  business_id: b46.id,
  user_id: u14.id,
  stars: 4,
  text: okay_1,
  post_date: '9/22/2018'
)
Review.create(
  business_id: b46.id,
  user_id: u19.id,
  stars: 5,
  text: "Order whatever you feel is right, as long as you get the crawfish beignets as well. The Shrimp and Grits are as perfect as it gets, and the Hangtown Fry makes me wish I could have seafood every morning.",
  post_date: '10/13/2018'
)
Review.create(
  business_id: b47.id,
  user_id: u7.id,
  stars: 3,
  text: okay_1,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b47.id,
  user_id: u2.id,
  stars: 3,
  text: okay_3,
  post_date: '9/12/2018'
)
Review.create(
  business_id: b47.id,
  user_id: u12.id,
  stars: 2,
  text: bad_3,
  post_date: '9/24/2018'
)
Review.create(
  business_id: b47.id,
  user_id: u14.id,
  stars: 2,
  text: meh_1,
  post_date: '9/22/2018'
)
Review.create(
  business_id: b47.id,
  user_id: u19.id,
  stars: 3,
  text: "The name Goku brought me and a couple of my friends to this place. The food here is top notch but the service killed it for me. We got the assorted seaweed salad, whole squid and clam, veggie and garlic ramen. The salad could've used a little more seaweed but the squid saved the day. It was cooked perfectly and tasted super fresh. I had ordered the garlic ramen originally substituting the pork broth with chicken. However after they brought it out there was still pork in it.",
  post_date: '9/30/2018'
)
Review.create(
  business_id: b48.id,
  user_id: u10.id,
  stars: 4,
  text: love_2,
  post_date: '8/26/2018'
)
Review.create(
  business_id: b48.id,
  user_id: u15.id,
  stars: 3,
  text: okay_1,
  post_date: '9/8/2018'
)
Review.create(
  business_id: b48.id,
  user_id: u13.id,
  stars: 4,
  text: good_1,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b48.id,
  user_id: u4.id,
  stars: 4,
  text: love_1,
  post_date: '9/12/2018'
)
Review.create(
  business_id: b48.id,
  user_id: u9.id,
  stars: 5,
  text: "Food: 5/5. It tasted so good! Wish portions were a bit bigger but what lacked in quantity made up in quality. I got the $38 lunch which included a choice of appetizer (I chose steamed dim sum which was what the waiter recommended) and the merlot beef. The beef was so rich and delicious! I tried my friend's bass as well and it was super melty and yummy.",
  post_date: '9/18/2018'
)
Review.create(
  business_id: b49.id,
  user_id: u10.id,
  stars: 4,
  text: love_4,
  post_date: '7/26/2018'
)
Review.create(
  business_id: b49.id,
  user_id: u15.id,
  stars: 5,
  text: good_4,
  post_date: '9/8/2018'
)
Review.create(
  business_id: b49.id,
  user_id: u13.id,
  stars: 4,
  text: okay_4,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b49.id,
  user_id: u4.id,
  stars: 1,
  text: bad_2,
  post_date: '9/22/2018'
)
Review.create(
  business_id: b49.id,
  user_id: u9.id,
  stars: 4,
  text: "Unfortunately, there are no puppies here. I've come here a few times because I love boba, and I'm always hoping that I've come on an off day. But I'm convinced the drinks here are just mediocre. They come in those fat cups, so you get a lot. I've only tried the regular milk tea, and it's just ok. But the boba is always disappointing. They're always hard. But the ladies that work here are pretty friendly.",
  post_date: '9/28/2018'
)
Review.create(
  business_id: b50.id,
  user_id: u16.id,
  stars: 4,
  text: love_3,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b50.id,
  user_id: u5.id,
  stars: 4,
  text: good_4,
  post_date: '9/8/2018'
)
Review.create(
  business_id: b50.id,
  user_id: u7.id,
  stars: 4,
  text: good_3,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b50.id,
  user_id: u11.id,
  stars: 4,
  text: okay_3,
  post_date: '9/18/2018'
)
Review.create(
  business_id: b50.id,
  user_id: u20.id,
  stars: 4,
  text: "It seems unfair that this place has amazing ice cream, donuts and toppings all in one place.  Everything on it's own was delicious but combining all those flavors was unbelievable.  The owners were very involved and super helpful along my tasting journey.",
  post_date: '9/26/2018'
)
Review.create(
  business_id: b51.id,
  user_id: u19.id,
  stars: 4,
  text: good_2,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b51.id,
  user_id: u5.id,
  stars: 4,
  text: good_3,
  post_date: '9/8/2018'
)
Review.create(
  business_id: b51.id,
  user_id: u7.id,
  stars: 2,
  text: meh_3,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b51.id,
  user_id: u11.id,
  stars: 5,
  text: love_1,
  post_date: '9/18/2018'
)
Review.create(
  business_id: b51.id,
  user_id: u20.id,
  stars: 5,
  text: "The food here is phenom. I had a great meal (with the bonus of Skymiles) and I liked that it was self-service making ordering quick and convenient. I decided on the BENGAN BHARTA (roasted eggplant, mashed and sautéed with onions, garlic and simmered in tomato sauce) and PLAIN NAAN. The Bengan Bharta was highlighted as the chef's favorite and I'm obsessed with eggplants so that was an easy choice for me.",
  post_date: '9/26/2018'
)
Review.create(
  business_id: b52.id,
  user_id: u10.id,
  stars: 5,
  text: good_1,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b52.id,
  user_id: u13.id,
  stars: 4,
  text: good_2,
  post_date: '9/8/2018'
)
Review.create(
  business_id: b52.id,
  user_id: u5.id,
  stars: 4,
  text: love_2,
  post_date: '9/10/2018'
)
Review.create(
  business_id: b52.id,
  user_id: u1.id,
  stars: 4,
  text: okay_4,
  post_date: '9/18/2018'
)
Review.create(
  business_id: b52.id,
  user_id: u18.id,
  stars: 3,
  text: "This is one of the best things about living out in the Outer Sunset! My huzz loves the chicken tandoori pizza and, now, even better, the chicken sandwich. I usually get the classic vegetarian Indian food (aloo gobi, bangan bartha, dal, etc.) But I decided to try the vegetarian Indian pizza tonight and it was delish! A little more bangan bartha drizzled on top would have made it perfect! I even had to try the chicken pakora he ordered because it looked so good, and it was!",
  post_date: '9/22/2018'
)
Review.create(
  business_id: b53.id,
  user_id: u9.id,
  stars: 5,
  text: good_1,
  post_date: '8/17/2018'
)
Review.create(
  business_id: b53.id,
  user_id: u5.id,
  stars: 4,
  text: good_2,
  post_date: '8/18/2018'
)
Review.create(
  business_id: b53.id,
  user_id: u7.id,
  stars: 4,
  text: love_2,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b53.id,
  user_id: u11.id,
  stars: 4,
  text: love_2,
  post_date: '8/27/2018'
)
Review.create(
  business_id: b53.id,
  user_id: u19.id,
  stars: 4,
  text: "Small but cute and compact. The cow logo was what caught my attention at first, but they have a surprisingly large selection of drinks. I hesitated between the Winnie the Pooh and just a regular, so I went with the House boba to be safe. Their cups are pretty big, and it's only $3.99!",
  post_date: '8/31/2018'
)
Review.create(
  business_id: b54.id,
  user_id: u2.id,
  stars: 5,
  text: good_1,
  post_date: '7/27/2018'
)
Review.create(
  business_id: b54.id,
  user_id: u16.id,
  stars: 4,
  text: okay_1,
  post_date: '8/18/2018'
)
Review.create(
  business_id: b54.id,
  user_id: u17.id,
  stars: 4,
  text: love_4,
  post_date: '8/22/2018'
)
Review.create(
  business_id: b54.id,
  user_id: u7.id,
  stars: 5,
  text: love_1,
  post_date: '8/30/2018'
)
Review.create(
  business_id: b54.id,
  user_id: u8.id,
  stars: 5,
  text: "The bucatini pasta came out first and we went in on it. The pasta was cooked al dente and it absorbed the tomato sauce so well. It had a nice spicy kick to it, which we loved and the sausage was a bit on the drier side but still good.",
  post_date: '9/9/2018'
)

# reviews cp5

i1 = Image.create(user_id: u2.id, business_id: b1.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/fivFqKRBrA1ajiXJhTKesfrZ")
i1.photo.attach(io: file, filename: "01.jpg")

i1 = Image.create(user_id: u2.id, business_id: b1.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/jAALftUxHCPZRcZTbtPJ762B")
i1.photo.attach(io: file, filename: "02.jpg")

i1 = Image.create(user_id: u1.id, business_id: b1.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/yLEfBYwqj5ybx3Cpk32ZxUQf")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u1.id, business_id: b2.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o.jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b2.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(1).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b2.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(2).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b3.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(3).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b3.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(4).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b3.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(5).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b4.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(6).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u3.id, business_id: b4.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(7).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b4.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(8).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b17.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(9).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b17.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(10).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u6.id, business_id: b17.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(11).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b6.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(12).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b6.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(13).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b6.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(14).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u16.id, business_id: b7.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(18).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u17.id, business_id: b7.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(19).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u9.id, business_id: b7.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(20).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b8.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(15).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b8.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(16).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b8.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(17).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u3.id, business_id: b9.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(21).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b9.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(22).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b9.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(23).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b10.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(24).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u1.id, business_id: b10.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(25).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u19.id, business_id: b10.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(26).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b11.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(27).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u15.id, business_id: b11.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(28).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u15.id, business_id: b11.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(29).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u19.id, business_id: b12.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(30).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u19.id, business_id: b12.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(31).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b12.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(32).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b13.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(33).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b13.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(34).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b13.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(35).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b14.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(36).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b14.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(37).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u17.id, business_id: b14.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(38).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b15.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(39).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b15.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(40).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b15.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(41).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b16.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(42).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u1.id, business_id: b16.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(43).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u4.id, business_id: b16.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(44).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b5.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(45).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b5.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(46).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u9.id, business_id: b5.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(47).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u13.id, business_id: b18.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(48).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u1.id, business_id: b18.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(49).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u1.id, business_id: b18.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(50).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b19.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(51).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b19.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(52).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b19.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(53).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b20.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(54).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b20.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(55).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b20.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(56).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b21.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(57).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b21.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(58).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b21.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(59).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b22.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(60).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b22.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(61).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b22.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(62).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b23.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(63).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b23.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(64).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u4.id, business_id: b23.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(65).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b24.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(66).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b24.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(67).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b24.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(68).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b25.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(69).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b25.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(70).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u12.id, business_id: b25.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(71).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u6.id, business_id: b26.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(72).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u6.id, business_id: b26.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(73).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b26.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(74).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b27.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(75).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u13.id, business_id: b27.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(76).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u13.id, business_id: b27.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(77).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b28.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(78).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u16.id, business_id: b28.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(79).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u16.id, business_id: b28.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(80).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b29.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(81).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b29.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(82).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b29.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(83).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b30.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(84).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b30.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(85).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b30.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(86).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b31.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(87).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b31.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(88).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u17.id, business_id: b31.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(89).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b32.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(90).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u12.id, business_id: b32.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(91).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u12.id, business_id: b32.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(92).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b33.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(93).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u12.id, business_id: b33.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(94).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b33.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(95).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u3.id, business_id: b34.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(96).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u4.id, business_id: b34.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(97).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b34.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(98).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b35.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(99).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b35.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(100).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u15.id, business_id: b35.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(101).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b36.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(102).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b36.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(103).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b36.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(104).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b37.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(105).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b37.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(106).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b37.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(107).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b38.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(108).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b38.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(109).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b38.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(110).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b39.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(111).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b39.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(112).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u17.id, business_id: b39.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(113).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u3.id, business_id: b40.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(114).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b40.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(115).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b40.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(116).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u13.id, business_id: b41.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(117).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b41.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(118).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b41.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(119).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u15.id, business_id: b42.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(120).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b42.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(121).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u13.id, business_id: b42.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(122).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b43.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(123).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u17.id, business_id: b43.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(124).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b43.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(125).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u16.id, business_id: b44.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(126).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u3.id, business_id: b44.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(127).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u19.id, business_id: b44.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(128).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b45.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(129).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b45.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(130).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b45.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(131).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u6.id, business_id: b46.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(132).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u6.id, business_id: b46.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(133).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u14.id, business_id: b46.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(134).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b47.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(135).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u2.id, business_id: b47.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(136).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u19.id, business_id: b47.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(137).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b48.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(138).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u4.id, business_id: b48.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(139).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u4.id, business_id: b48.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(140).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b49.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(141).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u4.id, business_id: b49.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(142).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u9.id, business_id: b49.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(143).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u16.id, business_id: b50.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(144).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b50.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(145).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b50.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(146).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u19.id, business_id: b51.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(147).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u5.id, business_id: b51.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(148).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u20.id, business_id: b51.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(149).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u10.id, business_id: b52.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(150).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b52.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(151).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u18.id, business_id: b52.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(152).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u9.id, business_id: b53.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(153).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u7.id, business_id: b53.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(154).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u11.id, business_id: b53.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(155).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u16.id, business_id: b53.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(156).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b53.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(157).jpg")
i1.photo.attach(io: file, filename: "03.jpg")

i1 = Image.create(user_id: u8.id, business_id: b53.id)
file = open("https://s3-us-west-1.amazonaws.com/hot-spots-dev/o+(158).jpg")
i1.photo.attach(io: file, filename: "03.jpg")
