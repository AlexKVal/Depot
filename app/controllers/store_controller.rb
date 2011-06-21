class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @products = Product.all
    @cart = current_cart
    
    if session[:access_counter].nil?
        session[:access_counter] = 1
    else
        session[:access_counter]+=1
    end
    @access_counter = session[:access_counter]
  end

end
