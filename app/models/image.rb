class Image < ApplicationRecord

  belongs_to :user
  belongs_to :business

  has_one_attached :photos
end
