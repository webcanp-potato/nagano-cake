class Admin::ProductsController < ApplicationController
  
  before_action :set_product, only: [:show, :edit, :update]
  before_action :set_genres, only: [:new, :edit, :index, :create, :update]
  before_action :authenticate_admin!

end
