require 'test_helper'

class HostelsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hostels_new_url
    assert_response :success
  end

  test "should get create" do
    get hostels_create_url
    assert_response :success
  end

  test "should get update" do
    get hostels_update_url
    assert_response :success
  end

  test "should get edit" do
    get hostels_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get hostels_destroy_url
    assert_response :success
  end

  test "should get index" do
    get hostels_index_url
    assert_response :success
  end

  test "should get show" do
    get hostels_show_url
    assert_response :success
  end

end
