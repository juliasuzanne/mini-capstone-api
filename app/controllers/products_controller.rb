class ProductsController < ApplicationController
  def show_products
    product = Product.first
    product.as_json
  end
end
