class Category < ApplicationRecord
  validates :category, presence: true

  belongs_to :business
end
