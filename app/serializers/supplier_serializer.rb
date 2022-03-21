class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email, :products

  has_many :products
end
