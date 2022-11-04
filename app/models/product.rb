class Product < ApplicationRecord
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
end
