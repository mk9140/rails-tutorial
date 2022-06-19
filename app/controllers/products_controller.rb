class ProductsController < ApplicationController
  def index
    #  全ての商品を表示
    @products = Product.all
  end

  def show
  end

  def new
    @products = Product.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
