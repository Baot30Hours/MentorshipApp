require 'bcrypt'

class User < ApplicationRecord

  has_secure_password

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :userName, presence: true,
                    length: { minimum: 2 }
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 1 }, allow_nil: true

end
