class Product < ApplicationRecord
  def is_discounted?
   if price < 10
    return true
   else
    return false
  end

  def tax
    tax = price * .09
    return tax
  end

  def total
    total = price * 1.09
  end

end
