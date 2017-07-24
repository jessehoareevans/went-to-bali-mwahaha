class AdminsController < ApplicationController
  def show
    @products = Product.all
  end
end
