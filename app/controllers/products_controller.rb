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
    # @product.category_id = 3 # 仮カテゴリー
    @product.save # DB保存
    redirect_to product_url @product
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    # 更新前の商品データは、インスタンス変数@product
    # 更新後の商品データは変数params
    # @product
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_url @product
  end

  def destroy
    # 取得した該当商品のデータが代入
    @product = Product.find(params[:id])
    # 商品データを削除
    @product.destroy
    redirect_to products_url, status: :see_other
  end

  private

  # 許可されたパラメータかどうかを判断
  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id)
  end
end