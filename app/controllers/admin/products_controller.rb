class Admin::ProductsController < ApplicationController

  #before_action :set_product, only: [:show, :edit, :update]
  #before_action :set_genres, only: [:new, :edit, :index, :create, :update]
  #before_action :authenticate_admin!

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admin_products_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
    redirect_to admin_product_path(@product.id)
    else
      render "admins/products/edit"
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :explanation, :image, :genre_id, :price, :sales_status)
  end
end
