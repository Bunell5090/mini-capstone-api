Category.create!([
  {name: "Basketball Shoes"},
  {name: "Video Game Systems"}
])
Supplier.create!([
  {name: "Ben Unell", email: "BUnell@test.com", phone_number: "7735551234"},
  {name: "Chloe Unell", email: "CUnell@test.com", phone_number: "7735555678"}
])
Product.create!([
  {name: "Air Jordan 3's", price: "350.0", description: "Nike Air Jordan 3 Low-Top", rating: nil, cost: nil, quantity: nil, supplier_id: 1, user_id: nil},
  {name: "Sony Playstation 5", price: "700.0", description: "Sony Playstation 5 Bundle", rating: nil, cost: nil, quantity: nil, supplier_id: 1, user_id: nil},
  {name: "Air Jordan 2's", price: "150.0", description: "Nike Air Jordan 2 Low-Top", rating: nil, cost: nil, quantity: nil, supplier_id: 1, user_id: nil}
])
