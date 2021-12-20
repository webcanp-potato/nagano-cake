class Customer::OrdersController < ApplicationController

 # before_action :to_log, only: [:show]
 before_action :authenticate_customer!

end
