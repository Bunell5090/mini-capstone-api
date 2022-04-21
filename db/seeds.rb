Category.create!([
  {name: "Basketball Shoes"},
  {name: "Video Game Systems"}
])
Supplier.create!([
  {name: "Benjy Unell", email: "BUnell@test.com", phone_number: "7735551234"},
  {name: "Chloe Unell", email: "CUnell@test.com", phone_number: "7735555678"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 2, quantity: 10, status: nil, order_id: nil}
])
Product.create!([
  {name: "Air Jordan 3's", price: "350.0", description: "Nike Air Jordan 3 Low-Top", rating: nil, cost: nil, quantity: nil, supplier_id: 1, user_id: nil},
  {name: "Sony Playstation 5", price: "700.0", description: "Sony Playstation 5 Bundle", rating: nil, cost: nil, quantity: nil, supplier_id: 1, user_id: nil},
  {name: "Air Jordan 2's", price: "150.0", description: "Nike Air Jordan 2 Low-Top", rating: nil, cost: nil, quantity: nil, supplier_id: 1, user_id: nil}
])
Order.create!([
  {user_id: 1, subtotal: "10.0", tax: "5.0", total: "15.0"}
])
User.create!([
  {name: "Ben Unell", email: "test@test.com", password_digest: "$2a$12$bvA1PBiHW2riN.KF/xvA.u7wjlnrvMqiGRaZPxsDLD9cQ6kMQaVja", admin: false}
])
