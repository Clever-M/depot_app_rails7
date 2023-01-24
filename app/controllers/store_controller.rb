class StoreController < ApplicationController
  include IndexCounter
  before_action :set_counter

  def index
    @times_visited = session[:counter]
    @products = Product.order(:title)
  end
end
