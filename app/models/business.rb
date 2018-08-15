class Business < ApplicationRecord

  validates :name, :latitude, :longitude, :address, :city, :state, :zip, presence: true
  validates :price, inclusion: [1, 2, 3, 4 ]

  has_many :categories
  has_one :hour
  has_one :business_info
  has_many :reviews

  has_many :review_photos,
    through: :reviews,
    source: :photos_attachments
end
