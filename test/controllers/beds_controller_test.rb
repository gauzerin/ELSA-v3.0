require 'test_helper'

class BedsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get beds_new_url
    assert_response :success
  end

  test "should get create" do
    get beds_create_url
    assert_response :success
  end

  test "should get delete" do
    get beds_delete_url
    assert_response :success
  end

end
