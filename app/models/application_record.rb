class ApplicationRecord < ActiveRecord::Base
include CurrentCart
  #before_action :set_cart
  self.abstract_class = true
end
