class Admin::GenresController < ApplicationController
  
  before_action :authenticate_admin!, except: [:show]
  
end
