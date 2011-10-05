require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      :name => "sam",
      :password => "private",
      :password_confirmation => "private"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => @input_attributes
    end

    assert_redirected_to users_path
  end
end
