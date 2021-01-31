require 'test_helper'

class DogparksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dogparks_index_url
    assert_response :success
  end

  test "should get show" do
    get dogparks_show_url
    assert_response :success
  end

  test "should get new" do
    get dogparks_new_url
    assert_response :success
  end

  test "should get edit" do
    get dogparks_edit_url
    assert_response :success
  end

end
