class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :product_id, uniqueness: { scope: :order_id,
    message: "Product already exists in Cart!" }

  def validate!
    errors.add(:product_id, "Product already exists in Cart!")
  end
end
