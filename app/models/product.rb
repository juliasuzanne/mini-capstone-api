class Product < ApplicationRecord
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  belongs_to :supplier
  has_many :category_products #order matters here, category_products below
  has_many :categories, through: :category_products #replaces categories method which calls all the categories for each product called
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price < 10
  end

  # def categories # can only call category_products because of the has_many at top
  #   category_products.map do |category_product|
  #     category_product.category
  #   end
  # end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def tax
    tax = price * 0.09
    tax.floor(2)
  end

  def total
    price + tax
  end
end
