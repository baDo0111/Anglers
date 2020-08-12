require 'test_helper'

class FishControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fish_index_url
    assert_response :success
  end

  test "should get show" do
    get fish_show_url
    assert_response :success
  end

  test "should get new" do
    get fish_new_url
    assert_response :success
  end

  test "should get edit" do
    get fish_edit_url
    assert_response :success
  end

end
