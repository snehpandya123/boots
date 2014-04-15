require 'test_helper'

class PoappControllerTest < ActionController::TestCase
  test "should get invoice:string" do
    get :invoice:string
    assert_response :success
  end

  test "should get action:string" do
    get :action:string
    assert_response :success
  end

  test "should get from:string" do
    get :from:string
    assert_response :success
  end

  test "should get date:string" do
    get :date:string
    assert_response :success
  end

end
