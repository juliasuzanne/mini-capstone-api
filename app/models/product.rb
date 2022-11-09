class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price < 10
  end

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

  def supplier
    #can find supplier name with this method
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(product_id: id)
  end
end
