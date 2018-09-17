# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  first_name      :string           not null
#  last_name       :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  zip             :integer          not null
#  birthday        :string
#  city            :string
#  state           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


class User < ApplicationRecord

  validates :email, :first_name, :last_name, :zip, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  # validate :valid_email?, :valid_zip?
  before_validation :ensure_session_token

  attr_reader :password
  has_many :reviews, dependent: :destroy
  has_many :images
  has_one_attached :photo

  def self.find_by_credentials(email, password)
    @user = User.find_by(email: email)
    if @user && @user.is_password?(password)
      return @user
    else
      nil
    end
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token = SecureRandom.urlsafe_base64
  end

  def reset_session_token
    self.ensure_session_token
    self.save!
    self.session_token
  end

  # # # Email Validations

  def valid_email?
    split_email = self.email.split('@')
    if split_email?(split_email) && valid_top_level_domain(split_email)
      return true
    end
    false
  end

  def split_email?(split_email)
    split_email.length == 2
  end

  def valid_top_level_domain(split_email)
    ['.org', '.com', '.net', '.io', '.edu'].any? { |domain| split_email[1].include?(domain)}
  end

  def valid_zip?
    zip_arr = self.zip.to_s.split('');
    raise "Please put a valid Zip" unless zip_arr.length == 5 # add checks if all integers
  end
end
