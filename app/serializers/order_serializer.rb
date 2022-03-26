class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :quantity

  has_many :products
end
