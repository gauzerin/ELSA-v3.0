require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get bookings_resources_url
    assert_response :success
  end

end
