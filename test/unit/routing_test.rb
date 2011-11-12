require 'test_helper'
require './config/routes.rb'

class RoutingTest < ActionController::TestCase
  def test_routing
    assert_routing("/", :controller => "store", :action => "index")
    assert_routing("/products", :controller => "products", :action => "index")
    assert_routing({:path => "/line_items", :method => :post},
                   { :controller => "line_items", :action => "create",
                     :product_id => "1"},
                   {}, { :product_id => "1"})
  end
end
