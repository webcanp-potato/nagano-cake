class Customer::ProductsController < ApplicationController

before_action :authenticate_customer!, only: [:show]

 def index
   @products = Product.all
 end

 def show
   @product = Product.find(params:id)
 end

  private
  def product_params
		parmas.require(:product).permit(:name, :explanation, :price, :image, :sales_status)
	end


end
