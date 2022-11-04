class Product < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    discount = false
    discount = true if price < 10
  end

  def tax
    tax = 0
    tax = price * 0.09
    tax.round(2)
  end

  def total
    total = price + tax
  end
end
