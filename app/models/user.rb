class User < ActiveRecord::Base
  validates :email, presence: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  has_many :businesses

  has_secure_password
end
