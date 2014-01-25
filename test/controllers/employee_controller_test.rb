require 'test_helper'

class EmployeeControllerTest < ActionController::TestCase
  test "should get emain" do
    get :emain
    assert_response :success
  end

end
