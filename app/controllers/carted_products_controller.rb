class CartedProductsController < ApplicationController
  def create
    cart = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: "carted",
    )
    if cart.save
      render json: cart.as_json
    else
      render json: { errors: cart.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    carted = current_user.carted_products
    render json: carted.as_json
  end
end
