class ProductsController < ApplicationController
  def index
    #  全ての商品を表示
    @products = Product.all
  end

  def show
    # 商品のデータを代入したインスタンス変数をビューへ渡す
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    p product_params
    @product = Product.new(product_params) # Strong Parameter
    @product.category_id = 3 # 仮カテゴリー
    @product.save # DB保存
    # redirect_to product_url @product
    redirect_to products_url

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
