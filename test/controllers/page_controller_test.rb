require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get PassengerDetails" do
    get :PassengerDetails
    assert_response :success
  end

end
