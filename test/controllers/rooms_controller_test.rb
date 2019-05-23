require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rooms_index_url
    assert_response :success
  end

  test "should get new" do
    get rooms_new_url
    assert_response :success
  end

  test "should get delete" do
    get rooms_delete_url
    assert_response :success
  end

  test "should get create" do
    get rooms_create_url
    assert_response :success
  end

end
