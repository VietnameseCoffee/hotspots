class Image < ApplicationRecord

  belongs_to :user
  belongs_to :business

  has_one_attached :photo
end

# a.photo.attach(io: open("https://s3-us-west-1.amazonaws.com/aafullstack-dev/23BL2hZ9aMmoNNeWp9Qmjd8G"), filename: "dumplings.jpg")
# a.photo.attach(io: File.open("/Users/appacademy/Desktop/images/01dumplings.jpg", filename: "01dumplings.jpg")
