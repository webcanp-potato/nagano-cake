class Customer::CartProductsController < ApplicationController


 # before_action :set_cart_products, only: [:update, :destroy]

 # before_action :authenticate_customer!

 def index
  @cart_products = current_customer.cart_products
  # @total_price = @cart_products.sum{|cart_produt|cart_product.product.price*cart_product.amount*1.1}
 end

 def create
  @cart_product = CartProduct.new(cart_product_params)
  @cart_product.customer_id = current_customer.id
  @curt_product.product_id = params[:product_id]

  if @cart_product.save
   # flash[:notice] = "#{@cart_item.item.name}をカートに追加しました。"
   redirect_to customers_cart_products_path
  else
   # flash[:alert] = "個数を選択してください"
   render "customers/products/show"
  end
 end

 def update
  @cart_product = CartProduct.find(params[:id])
  #@cart.units += cart_params[:units].to_i
  @cart_product.update(cart_item_params)
  redirect_to customers_cart_products_path
 end

 def destroy
  @cart_product = CartProduct.find(params[:id])
  @cart_product.destroy
  # flash.now[:alert] = "#{@cart_item.item.name}を削除しました"
  redirect_to customers_cart_products_path
 end

 def destroy_all
  @cart_product = CartProduct.find(params[:id])
  @cart_product.destroy_all
  # flash[:alert] = "カートの商品を全て削除しました"
  redirect_to customers_cart_products_path
 end

 private

  def cart_product_params
   params.require(:cart_product).permit(:amount, :product_id, :customer_id)
  end

end