class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  include IndexCounter
  before_action :set_counter

  def index
    @times_visited = session[:counter]
    @products = Product.order(:title)
  end
end
