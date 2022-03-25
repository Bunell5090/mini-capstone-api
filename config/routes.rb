Rails.application.routes.draw do

  #products
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products/" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  
  #suppliers
  get "/suppliers" => "suppliers#index"

  #users
  post "/users" => "users#create"

  #sessions
  post "/sessions" => "sessions#create"

  #orders
  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders:id" => "orders#show"

  #carted_products
  get "/carted_products" => "carted_products#index"
  
  


end
