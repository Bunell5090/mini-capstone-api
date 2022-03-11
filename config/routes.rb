Rails.application.routes.draw do
  get "/get_one_product" => "products#get_product_method"
  get "/get_all_products" => "products#all_products_method"
end
