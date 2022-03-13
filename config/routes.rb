Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  get "/product/:id" => "product#show"
  patch "/product/:id" => "product#update"
end
