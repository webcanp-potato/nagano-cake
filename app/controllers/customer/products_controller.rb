class Customer::ProductsController < ApplicationController

before_action :authenticate_customer!, only: [:show]

end
