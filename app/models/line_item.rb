class LineItem < ApplicationRecord
include CurrentCart
  #before_action :set_cart
  belongs_to :product
  belongs_to :cart
  belongs_to :order, optional: true
  def total_price
      product.price * quantity
  end
end
