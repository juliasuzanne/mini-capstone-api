class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :email, presence: true, uniqueness: true
  has_many :carted_products
  has_many :orders, through: :carted_products
end
