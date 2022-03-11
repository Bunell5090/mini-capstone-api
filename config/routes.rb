Rails.application.routes.draw do
  get "/get_one_product" => "products#get_product_method"
  get "/get_all_products" => "products#all_products_method"
  get "/first_product" => "products#first_product_method"
  get "/second_product" => "products#second_product_method"
  get "/third_product" => "products#third_product_method"
end
