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

arr = '10:30 am - 2:30&10:30 am - 2:30&10:30 am - 2:30&10:30 am - 2:30&10:30 am - 2:30&closed&closed'

h1 = Hour.new(business_id: )
