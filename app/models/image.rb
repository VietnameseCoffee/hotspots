class Image < ApplicationRecord

  belongs_to :user
  belongs_to :business

  has_one_attached :photos
end

# .photo.attach(io: https://s3-us-west-1.amazonaws.com/aafullstack-dev/23BL2hZ9aMmoNNeWp9Qmjd8G, filename: "dumplings.jpg")
