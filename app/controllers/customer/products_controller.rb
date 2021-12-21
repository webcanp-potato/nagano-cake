class Customer::ProductsController < ApplicationController

before_action :authenticate_customer!, only: [:show]

 def index
    @genres = Genre.all
    @products = Product.where(sales_status: true).page(params[:page]).per(8)
 end

 def show
   @products = Product.all
   @product = Product.find(params[:id])
   @cart_products = CartProduct.new
   @genres = Genre.all
 end

  private
  def product_params
		parmas.require(:product).permit(:name, :explanation, :price, :image, :sales_status)
	 end


end
