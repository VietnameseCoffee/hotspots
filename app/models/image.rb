class Image < ApplicationRecord

  belongs_to :user
  belongs_to :business

  has_one_attached :photo
end



# Desktop
# a.photo.attach(io: File.open("/Users/appacademy/Desktop/images/01dimsum.jpg"), filename: "01dimsum.jpg")

# Webserver?
# b.photo.attach(io: open("https://s3-us-west-1.amazonaws.com/aafullstack-dev/Ci1d7c2PcwSX8GSFXVkkaSyx"), filename: "Ci1d7c2PcwSX8GSFXVkkaSyx")
