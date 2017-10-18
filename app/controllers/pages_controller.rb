class PagesController < ApplicationController
  def index
  end

  def cart
    @cart = Cart.all
  end
end
