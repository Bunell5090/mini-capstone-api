class ProductsController < ApplicationController
  def get_one_product
    
  end
  
  def all_products_method
    my_products = Product.all
    render json: my_products.as_json
  end

  def first_product_method
    first_product = Product.first
    render json: first_product.as_json
  end

  def second_product_method
    second_product = Product.second
    render json: second_product.as_json
  end

  def third_product_method
    third_product = Product.third
    render json: third_product.as_json
  end

  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    products = Products.find_by(id: params["id"])
    render json: products.as_json
  end



end
