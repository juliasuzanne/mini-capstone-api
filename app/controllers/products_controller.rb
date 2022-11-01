class ProductsController < ApplicationController
  def show_products
    product = Product.first
    render json: product.as_json
  end
end
