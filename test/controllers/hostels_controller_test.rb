require 'test_helper'

class HostelsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get hostels_resources_url
    assert_response :success
  end

end
