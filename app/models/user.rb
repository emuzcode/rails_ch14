class User < ApplicationRecord
  # Active Recordのコールバック（callback）メソッド
  before_save { self.email = email.downcase }
  
  # user 
  validates :name,  presence: true, length: { maximum: 50 }
  
  # email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # password
  has_secure_password # gem 'bcrypt'
  validates :password, presence: true, length: { minimum: 6 }
end
