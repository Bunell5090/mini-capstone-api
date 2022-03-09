Rails.application.routes.draw do
  get "/get_product", controller: "products", action: "get_product_method"
end
