class Business < ApplicationRecord

  validates :name, :latitude, :longitude, :address, :city, :state, :zip, presence: true
  validates :price, inclusion: [1, 2, 3, 4 ]

  has_many :categories
  has_one :hour
  has_one :business_info

end
