class Hour < ApplicationRecord
  validates :hours, presence: true
  before_validation :ensure_hours

  belongs_to :business

  DEFAULT_TIME = '10:00 am - 9:00&10:00 am - 9:00&10:00 am - 9:00&10:00 am - 9:00&10:00 am - 11:00&10:00 am - 11:00&10:00 am - 7:00'

  def ensure_hours
    self.hours ||= DEFAULT_TIME
  end

  def to_arr
    self.hours.split("&")
  end
end
