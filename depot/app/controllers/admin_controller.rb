class AdminController < ApplicationController
  include CurrentCart
  def index
    set_cart
    @total_orders = Order.count
  end
end
