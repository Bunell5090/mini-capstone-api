class OrdersController < ApplicationController
  before_action :authenticate_user
  
  
  def index
    order = Order.all
    render json: order.as_json
  end

  def create
    order = Order.new(
      user_id: params[:user_id], 
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
    if order.save 
      render json: order
    else 
      render json: {error_messages: order.errors.full_messages}, status: 422
    end
  end

  def show
    order = Order.find_by(id: params["id"])
    render json: order.as_json
  end
  
end
