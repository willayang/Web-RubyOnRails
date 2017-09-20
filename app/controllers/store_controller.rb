class StoreController < ApplicationController
 skip_before_action :authorize 

  include CurrentCart
  before_action :set_cart
  def index
    #@products = Product.order(:title)
    #@cart = current_cart;
   if params[:searchKey]
      @products = Product.order(:title).where("title||description||price LIKE :searchKey",{:searchKey => "%"+params[:searchKey]+"%"})
    else
      @products=Product.order(:title)
  end
  end
end
