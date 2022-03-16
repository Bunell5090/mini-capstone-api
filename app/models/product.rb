class Product < ApplicationRecord
  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: true
  validates :description, length: { in 10..500 }
 

  def is_discounted?
   price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

def discount_limits
  if price <= cost
    errors.add(:price, "cannot be less than or equal to cost")
  end
end


end
