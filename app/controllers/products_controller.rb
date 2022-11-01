class ProductsController < ApplicationController
  def show_products
    render json: { key: "value" }
  end
end
