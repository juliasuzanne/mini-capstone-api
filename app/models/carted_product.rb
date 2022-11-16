class CartedProduct < ApplicationRecord
  belongs_to :products
  belongs_to :user
  belongs_to :order, optional: true #optional: true allows us to create an instance of the carted product model without passing in an order id, which it requires by default when using associations
end
