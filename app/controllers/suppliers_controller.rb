class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers.as_json
  end

  def show
    supplier = Supplier.find(params[:id])
    render json: supplier.as_json
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if supplier.save
      render json: supplier.as_json
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    supplier = Supplier.find(params[:id])

    supplier[:name] = params[:name] || supplier[:name]
    supplier[:email] = params[:email] || supplier.name
    supplier.phone_number = params[:phone_number] || supplier.phone_number

    if supplier.save
      render json: supplier.as_json
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
