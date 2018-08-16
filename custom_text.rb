# b0 = {
# name: "Good Mong Kok Bakery",
# latitude: 37.795466,
# longitude: -122.408336,
# address: "1039 Stockton St",
# city: "San Francisco",
# state: "CA",
# zip: 94108,
# stars: nil,
# price: 2,
# }

# b1 = {
#   name: 'Wildflower Cafe',
#   latitude: 37.794143,
#   longitude: -122.401591,
#   address: "411 Sansome Street",
#   city: "San Francisco",
#   state: "CA",
#   zip: 94111,
#   price: 2
# }

# b2 = {
#   name: 'Plow',
#   latitude: 37.762585,
#   longitude: -122.395434,
#   address: "1299 18th St.",
#   city: "San Francisco",
#   state: "CA",
#   zip: 94107,
#   price: 2
# }

# c0 = {
#   business_id = 2,
#   category = "Cafe"
# }
#
# c1 = {
#   business_id: 1,
#   category: "Bakeries"
# }
#
# c2 = {
#   business_id: 1,
#   category: "Dim Sum"
# }
#
# c3 = {
#   business_id: 1,
#   category: "Chinese"
# }

# Business.includes(:categories).each do |b|
#   puts b.categories.pluck(:category)
# end

# arr = '10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&10:30 am - 2:30 pm&Closed&Closed'

# details = 'Takes Reservations:Yes&Delivery:No&Take-out:No&Accepts Credit Cards:Yes&Accepts Apple Pay:No&Accepts Google Pay:No&Accepts Bitcoin:No&Parking:Street&Bike Parking:Yes&Wheelchair Accessible:Yes&Noise Level:Average&Good for Kids:No&Good for Groups:Yes&Attire:Casual&Wi-Fi:No&Has TV:No&Caters:No'

# Review.new(
#   business_id: 2,
#   user_id: 1,
#   stars: 4,
#   text: "This place has great shark fin dumplings!",
#   post_date: "08/10/2018"
#  )

# r = Review.first
# r.photo.attach(io: File.open("/Users/appacademy/Documents/paintings/boca.jpg"), filename: "boca.jpg")
# okay = "This place has decent food, it can be a bit pricey. Service was fair, but I really like the surrounding view. Atmosphere was pleasant but nothing extraordinary."
# good = "I really like this place a lot! The seating was nice and the service is super friendly, the food can be a bit small at times but I think it's great. Definitely return!"
# meh = "The food really is fine but the service could really use a pickup. Very little people but yet the service was so slow. If I'm craving it then I'll return but I dunno."
