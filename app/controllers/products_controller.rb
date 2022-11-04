class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    @product.save
    render template: "products/show"
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    @product = product
    product.name = params[:name] || product.name
    product.image_url = params[:image_url] || product.image_url
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description

    product.save
    render template: "products/show"
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)

    product.destroy

    render json: { message => "Product successfully destroyed" }
  end
end
