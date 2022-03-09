Rails.application.routes.draw do
  get "/get_one_product", controller: "products", action: "get_product_method"
  get "/get_all_products", controller: "products", action: "all_products_method"
end
