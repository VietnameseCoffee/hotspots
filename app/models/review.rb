class Review < ApplicationRecord
  validates :text, :post_date, presence: true
  validates :stars, inclusion: [1, 2, 3, 4, 5]
  validates :text, length: { minimum: 1 }

  belongs_to :business
  belongs_to :user

  has_many_attached :photos
end
