class Business < ApplicationRecord

  validates :name, :latitude, :longitude, :address, :city, :state, :zip, presence: true
  validates :price, inclusion: [1, 2, 3, 4 ]
end

# options = {
#   name: 'Starbucks',
#   latitude: 37.773972,
#   longitude: -122.431297,
#   address: "200 Battery",
#   city: "San Francisco",
#   state: "CA",
#   zip: 94533,
#   price: 2
# }

# options2 = {
#   name: 'Starbucks',
#   latitude: 35.773972,
#   longitude: -122.431297,
#   address: "200 Market",
#   city: "San Francisco",
#   state: "CA",
#   zip: 94533,
# }
