class Image < ApplicationRecord
  validates :product_id, uniqueness: true
  validates :product_id, presence: true
  validates :url, uniqueness: true
  validates :url, presence: true
  belongs_to :Product
end
