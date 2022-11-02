class ProductsController < ApplicationController
  def show_products
    product = Product.first
    render json: product.as_json
  end

  def show_all
    products = Product.all
    render json: products.as_json
  end
end
