class Category < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products

  # def products REPLACED BY LINE 3
  #   category_products.map do |category_product|
  #     category_product.product
  #   end
  # end
end
