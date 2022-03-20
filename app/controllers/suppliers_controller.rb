class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show
    id = params[:id]
    suppliers = Supplier.find_by(id: id)
    render json: suppliers
  end

  def create
    supplier = Supplier.new(
      name: params["name"], 
      email: params["email"], 
      phone_number: params["phone_number"]
      )
    if supplier.save #happy path
      render json: supplier
    else #sad path
      render json: {error_messages: supplier.errors.full_messages}, status: 422
    end
  end

  def update
    id = params[:id]
    supplier = find_by(id: id)
    supplier.name = params["name"] || supplier.name
    supplier.email = params["email"] || supplier.email
    supplier.phone_number = params["phone_number"] || supplier.phone_number
    if supplier.save #happy path
      render json: supplier
    else #sad path
      render json: {error_messages: supplier.errors.full_messages}, status: 422
    end
  end

  def destroy
    supplier_id = params["id"]
    supplier = Supplier.find_by(id: supplier_id)
    supplier.destroy
    render json: {message: "Supplier has been deleted!"}
  end
end
