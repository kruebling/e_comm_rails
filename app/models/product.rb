class Product < ApplicationRecord
  has_many :order_items

  scope :search, -> (search_parameter) {
    where("name ilike ?", "%#{search_parameter}%")
  }
end
