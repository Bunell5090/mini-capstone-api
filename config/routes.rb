Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products/:id" => "product#create"
  patch "/products/:id" => "product#update"
  delete "/products/:id" => "product#destroy"
end
