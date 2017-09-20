class Order < ApplicationRecord
#include CurrentCart
#before_action :set_cart
 has_many :line_items, dependent: :destroy
 PAYMENT_TYPES =["Check", "Credit Card", "Money Order", "Paypal"]
 validates :name, :address, :email, presence: true
 validates :paytype, inclusion: PAYMENT_TYPES
 def add_items_from_cart(cart)
   cart.line_items.each do |item|
   item.update_attributes(:cart_id => nil, :order_id => self.id)
     #item.cart_id = nil
     #item.order_id = self.id
   end
 end
  def total_price
    line_items.to_a.sum{|item| item.total_price}
  end
end
=begin
PAYMENT_TYPES = ["Check", "Credit Card", "Money Order"]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_items_from_cart(cart)
    cart.line_items.each do |item|
      item.update_attributes(:cart_id => nil, :order_id => self.id)


     end
  end

  def total_price
    line_items.to_a.sum{|item| item.total_price}
  end
end
=end

