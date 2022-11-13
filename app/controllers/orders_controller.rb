class OrdersController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_admin, except: [:index, :show]

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
    @order = current_user.orders.find_by(id: params[:id])
    render template: "orders/show"
  end

  def index
    @orders = current_user.orders
    render template: "orders/index"
  end
end
