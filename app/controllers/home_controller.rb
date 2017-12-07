class HomeController < ApplicationController
  def index
    @products = Product.all
    if params[:search] != nil
      @products = Product.search(params[:search])
    end
    @order_item = current_order.order_items.new
  end
end
