class ImagesController < ApplicationController
  def index
    images = Image.all
    render json: images.as_json
  end

  def create
    image = Image.new(
      url: params[:url],
      description: params[:description],
      product_id: params[:product_id],
    )
    image.save
    render json: image.as_json
  end
end
