class BusinessInfo < ApplicationRecord
  validates :details, presence: true

  belongs_to :business

  def to_arr
    self.details.split("&").map {|detail| detail.split(":")}
  end
end
