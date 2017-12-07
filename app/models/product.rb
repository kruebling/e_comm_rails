class Product < ApplicationRecord
  has_many :order_items

  scope :search, -> (search_parameter) {
    where("lower(name) like lower(?)", "%#{search_parameter}%")
  }
end
