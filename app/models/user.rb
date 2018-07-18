class User < ApplicationRecord

  has_secure_password

  validates :username, presence: true
  validates :password, length: { minimum: 8 }, on: :create

  has_many :rides
  has_many :routes, through: :rides
end
