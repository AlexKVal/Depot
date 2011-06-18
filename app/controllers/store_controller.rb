class StoreController < ApplicationController
  def index
  	@products = Product.all
  	
  	if session[:access_counter].nil?
  	    session[:access_counter] = 1
  	else
  	  	session[:access_counter]+=1
  	end
  	@access_counter = session[:access_counter]
  end

end
