# app/controllers/products_controllers.rb
class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end
end
