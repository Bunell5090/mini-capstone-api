class Supplier < ApplicationRecord
  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :email, presence: true 
  validates :phone_number, presence: true 
  validates :phone_number, length: 10



end
