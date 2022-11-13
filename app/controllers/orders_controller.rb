class OrdersController < ApplicationController
  def create
    price = Product.find(params[:product_id]).price
    subtotal = price * params[:quantity]
    tax = subtotal * 0.09
    total = subtotal + tax

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      total: total,
      tax: tax,
      subtotal: subtotal,
    )
    if order.save
      render json: order.as_json
    else
      render json: { message: order.errors.full_messages }, status: 422
    end
  end

  def show
    order = Order.find_by(id: params["id"])
    if current_user.id == order.user_id
      render json: order.as_json
    else
      render json: { message: "Please login" }
    end
  end

  def index
    orders = Order.where(user_id: current_user.id)
    render json: orders.as_json
  end
end
