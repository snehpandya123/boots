require 'test_helper'

class HrsControllerTest < ActionController::TestCase
  test "should get hhome" do
    get :hhome
    assert_response :success
  end

end
