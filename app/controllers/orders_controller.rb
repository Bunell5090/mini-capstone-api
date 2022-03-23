class OrdersController < ApplicationController
  def create
    product = Product.new(
      user_id: params["user_id"], 
      product_id: params["product_id"], 
      quantity: params["quantity"], 
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: pramas["total"]
    )
    if product.save #happy path
      render json: product
    else #sad path
      render json: {error_messages: product.errors.full_messages}, status: 422
    end
  end
end
