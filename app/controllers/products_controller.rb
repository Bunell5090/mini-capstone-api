class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    products = Products.find_by(id: params["id"])
    render json: products.as_json
  end



end
