class CartedProductsController < ApplicationController

  def index
    pp current_user
    cartedproducts = CartedProduct.all
    render json: cartedproducts
  end

  def create
    cartedproduct = CartedProduct.find_by(id: params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax 

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil
    )

    if order.save
      render json: order.as_json
    else
      render json: {error_messages: order.errors.full_messages}, status: 422
    end
  end


end
