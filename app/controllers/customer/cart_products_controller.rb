class Customer::CartProductsController < ApplicationController
 
 
 before_action :set_cart_products, only: [:update, :destroy]
 before_action :authenticate_customer!


end
