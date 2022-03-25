class CartedProductsController < ApplicationController

  def index
    pp current_user
    cartedproducts = CartedProduct.all
    render json: cartedproducts
  end

  def create
    cartedproduct = CartedProduct.find_by(id: params[:product_id])

    cartedproduct = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil
    )

    if cartedproduct.save
      render json: cartedproduct.as_json
    else
      render json: {error_messages: cartedproduct.errors.full_messages}, status: 422
    end
  end


end
