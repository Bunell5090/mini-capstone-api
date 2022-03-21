Rails.application.routes.draw do

  #products
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products/:id" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  
  #suppliers
  get "/suppliers" => "suppliers#index"

  #users
  post "/users" => "users#create"
end
