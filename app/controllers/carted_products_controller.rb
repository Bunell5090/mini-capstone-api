class CartedProductsController < ApplicationController

  def index
    carted_product = current_user.carted_product.where(status: "carted")
    render json: carted_product.as_json
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: "carted"
    )

    if carted_product.save
      render json: carted_product.as_json
    else
      render json: {error_message: carted_product.errors.full_messages}, status: 422
    end
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.status = "removed"
    if carted_product.save
      render json: {status: "Carted Prodcut remove!"}
    else
      render json: {status: "oh no, something went wrong"}
    end
  end

end