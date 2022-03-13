Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  get "/product/:id" => "product#create"
  patch "/product/:id" => "product#update"
end
