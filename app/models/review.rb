class Review < ApplicationRecord
  validates :stars, :text, :post_date, presence: true
  validates :text, length: { minimum: 1 }

  belongs_to :business
  belongs_to :user
  has_many_attached :photos
end
