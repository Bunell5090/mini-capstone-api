class ProductsController < ApplicationController
  def index
    pp current_user
    products = Product.all
    render json: products
  end

  def show
    id = params[:id]
    product = Product.find_by(id: id)
    render json: products(methods: [:is_discounted?, :tax, :total])
  end

  def create
    product = Product.new(
      name: params["name"], 
      price: params["price"], 
      description: params["description"]
    )
    if product.save #happy path
      render json: product
    else #sad path
      render json: {error_messages: product.errors.full_messages}, status: 422
    end
  end

  def update
    id = params[:id]
    product = Product.find_by(id: id)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    if product.save #happy path
      render json: product
    else #sad path
      render json: {error_messages: product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "Product has been deleted!"}
  end

end
