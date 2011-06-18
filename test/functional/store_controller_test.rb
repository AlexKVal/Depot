require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "should show products" do 
  	get :index
  	assert_not_nil assigns(:products)
  end

  test "should count user access to index action" do
  	get :index
  	assert_not_nil session[:access_counter]
  	assert_equal 1, session[:access_counter]
  	
  	get :index
  	assert_equal 2, session[:access_counter]
  end
end
