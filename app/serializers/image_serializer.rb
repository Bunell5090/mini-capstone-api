class ImageSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :url
  belongs_to :products
end
