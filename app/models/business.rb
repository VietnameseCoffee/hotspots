class Business < ApplicationRecord

  validates :name, :latitude, :longitude, :address, :city, :state, :zip, presence: true
  validates :price, inclusion: [1, 2, 3, 4]

  has_many :categories, dependent: :destroy
  has_one :hour, dependent: :destroy
  has_one :business_info, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :images

end
