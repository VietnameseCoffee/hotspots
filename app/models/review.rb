class Review < ApplicationRecord
  validates :stars, :text, :post_date, presence: true

  belongs_to :business
  belongs_to :user
end
