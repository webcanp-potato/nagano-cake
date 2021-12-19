class Customer::HomesController < ApplicationController
  
  def top
    @products = Product.all.order(created_at: :asc)
    #=> :asc,古い順 :desc,新しい順
    @genres = Genre.all
  end

  
    def about
    end
   
  private
   def product_params
     parmas.require(:product).permit(:name, :explanation, :price, :image, :sales_status, :genre_id)
   end
end