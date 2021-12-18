class Customer::HomesController < ApplicationController
  
  def top
   @products = Product.all
  end
  
  def about
  end
  
  private
	def product_params
		parmas.require(:product).permit(:name, :explanation, :price, :image, :sales_status)
	end
  
  
end
